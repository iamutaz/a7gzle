import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/dark_mode/app_icon.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/home_screen/owner/widget/create_apartment_form_feild.dart';
import 'package:a7gzle/features/Home/home_screen/owner/widget/create_apartment_lisitner.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OwnerScreen extends StatelessWidget {
  const OwnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //need to positioned when changing language
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () => context.pushNamed(RoutesConstant.notification),
                    child: AppIcon(
                      path: "assets/svgs/settings/notification.svg",
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Apartment".tr(),
                      style: TextStyles.font24mainbluebold,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "create your apartment listing and showcase all the features that make it unique. Add details, photos,  and start reaching potential tenants easily"
                          .tr(),
                      style: TextStyles.font17lightgrayregular,
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                CreateApartmentFormFeild(),
                CreateApartmentLisitner(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
