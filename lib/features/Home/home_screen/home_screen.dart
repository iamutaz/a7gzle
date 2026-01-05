import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_state.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/bottomlist.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/downcardlist.dart';
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
    // استدعاء البيانات عند بدء تشغيل الصفحة
    context.read<AllapartmentCubit>().emitAllApartmentState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// 1. Header: Profile Image & Welcome Message
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: const AssetImage(
                        "assets/images/fa11e95f10b86f6fdf71816b20fb738ef9dd8a44.png",
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: TextStyles.font14neartograymiduem.copyWith(
                            color: const Color(0xff8C8E98),
                          ),
                        ),
                        Text(
                          "Adrian Hajdin",
                          style: TextStyles.font18blackbold.copyWith(
                            fontSize: 16,
                            color: ColorsManager.lightblack(context),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    // TODO: أضف أيقونة التنبيهات هنا
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// 2. Body: BlocBuilder to handle states
              BlocBuilder<AllapartmentCubit, AllapartmentState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    allapartmentloading: () => const Center(
                      child: CircularProgressIndicator(color: ColorsManager.mainBlue),
                    ),
                    allapartmentsuccess: (data) {
                      List<Apartment> allapartments = data.apartmentlist;
                      return Column(
                        children: [
                          /// Section: Featured
                          _buildSectionHeader("Featured"),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 340,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.only(left: 20),
                              itemCount: allapartments.length,
                              itemBuilder: (context, index) {
                                return topCard(
                                  apartment: allapartments[index],
                                );
                              },
                            ),
                          ),

                          const SizedBox(height: 25),

                          /// Section: Recommendations
                          _buildSectionHeader("Our Recommendation"),
                          const SizedBox(height: 16),
                          
                          // فئات الفلترة (House, Villa, etc.)
                          const SizedBox(
                            height: 41,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: ButtonList(),
                            ),
                          ),
                          
                          const SizedBox(height: 20),

                          // قائمة الكروت السفلية (Grid)
                          downcardlist(apartments: allapartments),

                          const SizedBox(height: 30),
                        ],
                      );
                    },
                    allapartmentfailure: (exception) => Center(
                      child: Text(
                        "Error: ${exception.toString()}",
                        style: TextStyles.font14blackmideum.copyWith(color: Colors.red),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// ويدجت مساعد لبناء رؤوس الأقسام (Section Headers)
  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyles.font18blackbold.copyWith(
              fontSize: 20,
              color: ColorsManager.lightblack(context),
            ),
          ),
          GestureDetector(
            onTap: () {
              // TODO: Navigate to See All page
            },
            child: Text(
              "See All",
              style: TextStyles.font14blackmideum.copyWith(
                color: ColorsManager.mainBlue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}