import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_state.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/test2.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/bottomlist.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/topCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AllapartmentCubit>().emitAllApartmentState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),

                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/fa11e95f10b86f6fdf71816b20fb738ef9dd8a44.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 43,
                      width: 105,
                      child: Column(
                        children: [
                          Text(
                            "Good Morning",
                            style: TextStyle(
                              color: Color(0xff8C8E98),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "Adrian Hajdin",
                            style: TextStyle(
                              color: Color(0xff191D31),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 174),

                    //TODO : THE NOTIFAI ICON here
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),

              //   child: ,
              // ),
              SizedBox(height: 20),
              BlocBuilder<AllapartmentCubit, AllapartmentState>(
                builder: (context, state) {
                  return state.when(
                    initial: () {
                      return SizedBox.shrink();
                    },
                    allapartmentloading: () {
                      return Center(child: CircularProgressIndicator());
                    },
                    allapartmentsuccess: (data) {
                      List<Apartment> allapartments = data.apartmentlist;
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Featured",
                                  style: TextStyle(
                                    color: Color(0xff191D31),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "See All",
                                  style: TextStyle(
                                    color: Color(0xff0061FF),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 340,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),

                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,

                                itemCount: allapartments.length,
                                itemBuilder: (context, index) {
                                  return topCard(
                                    apartment: allapartments[index],
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Our Recommendation",
                                  style: TextStyle(
                                    color: Color(0xff191D31),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "See All",
                                  style: TextStyle(
                                    color: Color(0xff0061FF),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 41,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),

                              child: const ButtonList(),
                            ),
                          ),
                          SizedBox(height: 25),

                          downcardlist(),

                          SizedBox(height: 30),
                        ],
                      );
                    },
                    allapartmentfailure: (exception) {
                      return Text(exception.toString());
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
