import 'dart:io';

import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/helpers/user_model.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/widgets/app_text_form_feild.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_state.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/bottomlist.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/topCard.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/test2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class TenantScreen extends StatefulWidget {
  const TenantScreen({super.key});

  @override
  State<TenantScreen> createState() => _TenantScreenState();
}

class _TenantScreenState extends State<TenantScreen> {
  UserModel? user;
  @override
  void initState() {
    super.initState();
    _loadUser();
    context.read<AllapartmentCubit>().emitAllApartmentState();
  }

  Future<void> _loadUser() async {
    final storedUser = await SharedPrefHelper.getUser();
    setState(() {
      user = storedUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
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
                        child: Image.asset("assets/notload.jpeg"),
                        // child: Image.file(
                        //   width: double.infinity,
                        //   File(user!.profileimage),
                        //   fit: BoxFit.fitWidth,
                        // ),
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
                            "${user!.firstname} ${user!.lastname}",
                            style: TextStyle(
                              color: Color(0xff191D31),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 174),

                    SvgPicture.asset("assets/svgs/settings/notifaication.svg"),
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
                          SizedBox(height: 20),
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
