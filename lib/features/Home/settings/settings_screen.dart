import 'package:a7gzle/core/theming/dark_mode/app_icon.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/settings/widgets/build_list_tiles_widget.dart';
import 'package:a7gzle/features/Home/settings/widgets/logout_bloc_listener.dart';
import 'package:a7gzle/features/Home/settings/widgets/user_settings_info.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  final String usertype;
  const SettingsScreen({super.key, required this.usertype});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        title: Text("Profile".tr(), style: TextStyles.font20blacksemibold),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30.h),
          UserSettingsInfo(),

          SizedBox(height: 30.h),
          usertype == "tenant"
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Divider(
                    thickness: 1,
                    color: const Color.fromARGB(73, 102, 104, 118),
                  ),
                )
              : SizedBox.shrink(),
          SizedBox(height: 15.h),
          BuildListTilesWidget(usertype: usertype),

          LogoutBlocListener(),
        ],
      ),
    );
  }
}
