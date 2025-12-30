import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/helpers/user_model.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_button.dart';
import 'package:a7gzle/features/Home/settings/data/cubit/logout_cubit.dart';
import 'package:a7gzle/features/Home/settings/widgets/build_list_tiles_widget.dart';
import 'package:a7gzle/features/Home/settings/widgets/logout_bloc_listener.dart';
import 'package:a7gzle/features/Home/settings/widgets/user_settings_info.dart';
import 'package:a7gzle/features/details/widget/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        title: Text("Profile", style: TextStyles.font20blacksemibold),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: SvgPicture.asset("assets/svgs/settings/notifaication.svg"),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30.h),
          UserSettingsInfo(),

          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Divider(
              thickness: 1,
              color: const Color.fromARGB(73, 102, 104, 118),
            ),
          ),
          SizedBox(height: 15.h),
          BuildListTilesWidget(),

          LogoutBlocListener(),
        ],
      ),
    );
  }
}
