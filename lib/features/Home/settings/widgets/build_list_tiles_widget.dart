import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/dark_mode/theme_service.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/settings/data/cubit/logout_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BuildListTilesWidget extends StatefulWidget {
  const BuildListTilesWidget({super.key});

  @override
  State<BuildListTilesWidget> createState() => _BuildListTilesWidgetState();
}

class _BuildListTilesWidgetState extends State<BuildListTilesWidget> {
  @override
  Widget build(BuildContext context) {
    // عم نجيب اللون المناسب للنص بناءً على الثيم الحالي (أبيض أو أسود)
    Color dynamicTextColor = Theme.of(context).textTheme.bodyLarge!.color!;

    return Padding(
      padding: EdgeInsets.only(left: 8.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            onTap: () {
              context.pushNamed(RoutesConstant.userreservations);
            },
            leading: SvgPicture.asset("assets/svgs/settings/booking.svg"),
            title: Text(
              "My Booking",
              style: TextStyles.font18blackbold.copyWith(
                color: dynamicTextColor,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/booking.svg"),
            title: Text(
              "Payments",
              style: TextStyles.font18blackbold.copyWith(
                color: dynamicTextColor,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w),
            child: const Divider(
              thickness: 1,
              color: Color.fromARGB(73, 102, 104, 118),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/profile.svg"),
            title: Text(
              "Profile",
              style: TextStyles.font18blackbold.copyWith(
                color: dynamicTextColor,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/notification.svg"),
            title: Text(
              "Notification",
              style: TextStyles.font18blackbold.copyWith(
                color: dynamicTextColor,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/security.svg"),
            title: Text(
              "Security",
              style: TextStyles.font18blackbold.copyWith(
                color: dynamicTextColor,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/language.svg"),
            title: Text(
              "Language",
              style: TextStyles.font18blackbold.copyWith(
                color: dynamicTextColor,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/helpcenter.svg"),
            title: Text(
              "Dark Mode",
              style: TextStyles.font18blackbold.copyWith(
                color: dynamicTextColor,
              ),
            ),
            trailing: CupertinoSwitch(
              // عم ناخد القيمة من حالة السيرفس مباشرة
              value: ThemeService.isDark,
              onChanged: (value) {
                setState(() {
                  // استدعاء تابع التبديل (تغير الثيم + تحفظ في الشيرد)
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
                "Logout",
                style: TextStyles.font18blackbold.copyWith(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
