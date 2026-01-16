import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/dark_mode/app_icon.dart';
import 'package:a7gzle/core/theming/dark_mode/theme_service.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/settings/data/cubit/logout_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart' hide Trans;

class BuildListTilesWidget extends StatefulWidget {
  final String usertype;
  const BuildListTilesWidget({super.key, required this.usertype});

  @override
  State<BuildListTilesWidget> createState() => _BuildListTilesWidgetState();
}

class _BuildListTilesWidgetState extends State<BuildListTilesWidget> {
  @override
  Widget build(BuildContext context) {
    Color dynamicTextColor = Theme.of(context).textTheme.bodyLarge!.color!;

    return Padding(
      padding: EdgeInsets.only(left: 8.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.usertype == "tenant"
              ? ListTile(
                  onTap: () {
                    context.pushNamed(RoutesConstant.userreservations);
                  },
                  leading: const AppIcon(
                    path: "assets/svgs/settings/booking.svg",
                  ),
                  title: Text(
                    "my booking".tr(),
                    style: TextStyles.font18blackbold.copyWith(
                      color: dynamicTextColor,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: dynamicTextColor,
                  ),
                )
              : SizedBox.shrink(),
          GestureDetector(
            onTap: () => context.pushNamed(RoutesConstant.favorite),
            child: ListTile(
              leading: const AppIcon(path: "assets/svgs/favorite.svg"),
              title: Text(
                "Favorite".tr(),
                style: TextStyles.font18blackbold.copyWith(
                  color: dynamicTextColor,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w),
            child: const Divider(
              thickness: 1,
              color: Color.fromARGB(73, 102, 104, 118),
            ),
          ),
          ListTile(
            leading: const AppIcon(path: "assets/svgs/settings/profile.svg"),
            title: Text(
              "profile".tr(),
              style: TextStyles.font18blackbold.copyWith(
                color: dynamicTextColor,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
          ),
          widget.usertype == "owner"
              ? GestureDetector(
                  onTap: () => context.pushNamed(RoutesConstant.notification),
                  child: ListTile(
                    leading: const AppIcon(
                      path: "assets/svgs/settings/notification.svg",
                    ),

                    title: Text(
                      "notifications".tr(),
                      style: TextStyles.font18blackbold.copyWith(
                        color: dynamicTextColor,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: dynamicTextColor,
                    ),
                  ),
                )
              : SizedBox.shrink(),
          InkWell(
            onTap: () {
              _languageBottom(context);
            },
            child: ListTile(
              leading: const AppIcon(path: "assets/svgs/settings/language.svg"),
              title: Text(
                "language".tr(),
                style: TextStyles.font18blackbold.copyWith(
                  color: dynamicTextColor,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
            ),
          ),
          ListTile(
            leading: const AppIcon(path: "assets/svgs/settings/dark_mode.svg"),
            title: Text(
              "dark mode".tr(),
              style: TextStyles.font18blackbold.copyWith(
                color: dynamicTextColor,
              ),
            ),
            trailing: CupertinoSwitch(
              value: ThemeService.instance.themeMode == ThemeMode.dark,
              onChanged: (value) {
                setState(() {
                  ThemeService.instance.switchTheme();
                });
              },
              activeColor: Colors.green,
            ),
          ),
          InkWell(
            onTap: () {
              context.read<LogoutCubit>().emitLogoutState();
              SharedPrefHelper.clearAllData();
              SharedPrefHelper.clearAllSecuredData();
            },
            child: ListTile(
              leading: SvgPicture.asset("assets/svgs/settings/logout.svg"),
              title: Text(
                "logout".tr(),
                style: TextStyles.font18blackbold.copyWith(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _languageBottom(BuildContext context) {
    // بنعرف اللغة الحالية المفعّلة
    final currentLocale = context.locale;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (modalContext) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10.h),

              // كبسة العربي
              SizedBox(
                width: double.infinity,
                height: 56.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: currentLocale.languageCode == 'ar'
                        ? ColorsManager.mainBlue
                        : Colors.grey[100],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      // إذا مو مختارة بنحط إطار خفيف
                      side: currentLocale.languageCode == 'ar'
                          ? BorderSide.none
                          : BorderSide(color: Colors.grey[300]!),
                    ),
                  ),
                  onPressed: () async {
                    if (currentLocale.languageCode == 'ar')
                      return; // إذا مختارة أصلاً ما تعمل شي
                    const locale = Locale('ar');
                    await EasyLocalization.of(context)?.setLocale(locale);
                    Get.updateLocale(locale);
                    if (context.mounted) Navigator.pop(modalContext);
                  },
                  child: Text(
                    "العربية",
                    style: TextStyles.font18blackbold.copyWith(
                      // النص أبيض إذا مختارة، وأزرق أو أسود إذا لأ
                      color: currentLocale.languageCode == 'ar'
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 16.h),

              // كبسة الإنجليزي
              SizedBox(
                width: double.infinity,
                height: 56.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: currentLocale.languageCode == 'en'
                        ? ColorsManager.mainBlue
                        : Colors.grey[100],
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: currentLocale.languageCode == 'en'
                          ? BorderSide.none
                          : BorderSide(color: Colors.grey[300]!),
                    ),
                  ),
                  onPressed: () async {
                    if (currentLocale.languageCode == 'en') return;
                    const locale = Locale('en');
                    await EasyLocalization.of(context)?.setLocale(locale);
                    Get.updateLocale(locale);
                    if (context.mounted) Navigator.pop(modalContext);
                  },
                  child: Text(
                    "English",
                    style: TextStyles.font18blackbold.copyWith(
                      color: currentLocale.languageCode == 'en'
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        );
      },
    );
  }
}
