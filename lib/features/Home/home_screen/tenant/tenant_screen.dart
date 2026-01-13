import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/helpers/user_model.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/theming/dark_mode/app_icon.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_state.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/favorite_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/bottomlist.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/downcardlist.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/topCard.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TenantScreen extends StatefulWidget {
  const TenantScreen({super.key});

  @override
  State<TenantScreen> createState() => _TenantScreenState();
}

class _TenantScreenState extends State<TenantScreen> {
  UserModel? user;
  String selectedCategory = 'All';

  @override
  void initState() {
    super.initState();
    _loadUser();
    context.read<AllapartmentCubit>().emitAllApartmentState(context);
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
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: ClipOval(
                        child: Image.asset("assets/notload.jpeg"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning".tr(),
                          style: TextStyles.font14neartograymiduem.copyWith(
                            color: const Color(0xff8C8E98),
                          ),
                        ),
                        Text(
                          "${user!.firstname} ${user!.lastname}",
                          style: TextStyles.font14blackmideum.copyWith(
                            color: ColorsManager.lightblack(context),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(width: 150),
                    Spacer(),

                    AppIcon(path: "assets/svgs/settings/notifaication.svg"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              BlocBuilder<AllapartmentCubit, AllapartmentState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    allapartmentloading: () =>
                        const Center(child: CircularProgressIndicator()),
                    allapartmentsuccess: (data) {
                      List<Apartment> allapartments = data.apartmentlist;
                      List<Apartment> filteredList = [];

                      if (selectedCategory == 'All') {
                        filteredList = allapartments;
                      } else if (selectedCategory == 'Others') {
                        // في حال Others منخلي القائمة فاضية لأننا رح نعرض نص بدالها
                        filteredList = [];
                      } else {
                        // عم نمر عكل شقة عن طريق where عم ناخد التايب تبعا
                        // عم نحول التايب والزر المكبوس لحرف صغير مشان المقارنة
                        filteredList = allapartments.where((apt) {
                          String typeFromApi = apt.type
                              .toString()
                              .toLowerCase();
                          String categorySelected = selectedCategory
                              .toLowerCase();
                          //لحل مشكلة التايب الي بيرجع وبكون ناقص حروف مقارنة بالكبسة
                          return typeFromApi.contains(categorySelected) ||
                              categorySelected.contains(typeFromApi);
                        }).toList();
                      }

                      return Column(
                        children: [
                          const SizedBox(height: 20),

                          // Featured
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Featured".tr(),
                                  style: TextStyles.font18blackbold.copyWith(
                                    color: ColorsManager.lightblack(context),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "See All".tr(),
                                  style: TextStyles.font14blackmideum.copyWith(
                                    color: ColorsManager.mainBlue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),

                          SizedBox(
                            height: 340,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: allapartments.length,
                                itemBuilder: (context, index) =>
                                    topCard(apartment: allapartments[index]),
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Recommendation
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Our Recommendation".tr(),
                                  style: TextStyles.font18blackbold.copyWith(
                                    color: ColorsManager.lightblack(context),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "See All".tr(),
                                  style: TextStyles.font14blackmideum.copyWith(
                                    color: ColorsManager.mainBlue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),

                          // أزرار الفلترة
                          SizedBox(
                            height: 41,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ButtonList(
                                onCategoryChanged: (category) {
                                  setState(() {
                                    selectedCategory = category;
                                  });
                                },
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),

                          selectedCategory == 'Others'
                              ? Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 40,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Coming Soon...".tr(),
                                      style: TextStyles.font18blackbold
                                          .copyWith(
                                            color: ColorsManager.mainBlue,
                                          ),
                                    ),
                                  ),
                                )
                              : downcardlist(apartments: filteredList),

                          const SizedBox(height: 30),
                        ],
                      );
                    },
                    allapartmentfailure: (exception) =>
                        Center(child: Text(exception.toString())),
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
