import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/dark_mode/app_icon.dart';
import 'package:a7gzle/core/theming/dark_mode/theme_service.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/settings/data/cubit/logout_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BuildListTilesWidget extends StatefulWidget {
  const BuildListTilesWidget({super.key});

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
          ListTile(
            onTap: () {
              context.pushNamed(RoutesConstant.userreservations);
            },
            leading: const AppIcon(path: "assets/svgs/settings/booking.svg"),
            title: Text(
              "My Booking",
              style: TextStyles.font18blackbold.copyWith(color: dynamicTextColor),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
          ),
          ListTile(
            leading: const AppIcon(path: "assets/svgs/settings/payments.svg"),
            title: Text(
              "Payments",
              style: TextStyles.font18blackbold.copyWith(color: dynamicTextColor),
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
            leading: const AppIcon(path: "assets/svgs/settings/profile.svg"),
            title: Text(
              "Profile",
              style: TextStyles.font18blackbold.copyWith(color: dynamicTextColor),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
          ),
          ListTile(
            leading: const AppIcon(path: "assets/svgs/settings/notification.svg"),
            title: Text(
              "Notification",
              style: TextStyles.font18blackbold.copyWith(color: dynamicTextColor),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
          ),
          ListTile(
            leading: const AppIcon(path: "assets/svgs/settings/security.svg"),
            title: Text(
              "Security",
              style: TextStyles.font18blackbold.copyWith(color: dynamicTextColor),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
          ),
          ListTile(
            leading: const AppIcon(path: "assets/svgs/settings/language.svg"),
            title: Text(
              "Language",
              style: TextStyles.font18blackbold.copyWith(color: dynamicTextColor),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: dynamicTextColor),
          ),
          ListTile(
            leading: const AppIcon(path: "assets/svgs/settings/helpcenter.svg"),
            title: Text(
              "Dark Mode",
              style: TextStyles.font18blackbold.copyWith(color: dynamicTextColor),
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