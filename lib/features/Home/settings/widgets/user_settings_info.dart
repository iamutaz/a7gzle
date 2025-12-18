import 'dart:io';

import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/helpers/user_model.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UserSettingsInfo extends StatefulWidget {
  const UserSettingsInfo({super.key});

  @override
  State<UserSettingsInfo> createState() => _UserSettingsInfoState();
}

class _UserSettingsInfoState extends State<UserSettingsInfo> {
  UserModel? user;

  @override
  void initState() {
    super.initState();
    _loadUser();
  }

  void _loadUser() async {
    final loadedUser = await SharedPrefHelper.getUser();
    setState(() {
      user = loadedUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 120.h,
            height: 120.h,
            child: Stack(
              children: [
                ClipOval(
                  child: Image.asset("assets/images/default_profile.png"),
                  //                   child: Image.file(
                  //   File(user.profileimage),
                  //   fit: BoxFit.cover,
                  // ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "assets/svgs/settings/edit_pencil_settings.svg",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 15.h),
        Center(
          child: Text(
            "${user?.firstname}  ${user?.lastname}",
            style: TextStyles.font24blackbold,
          ),
        ),
      ],
    );
  }
}
