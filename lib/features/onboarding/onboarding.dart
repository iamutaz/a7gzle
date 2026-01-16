import 'package:a7gzle/core/helpers/constant.dart';
import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_button.dart';
import 'package:a7gzle/features/onboarding/widgets/home_images.dart';
import 'package:a7gzle/features/onboarding/widgets/onboarding_rich_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.scaffoldColor(context),
      body: Column(
        children: [
          const SizedBox(height: 15),
          HomeImages(),
          SizedBox(height: 30.h),
          Transform.translate(
            offset: Offset(0, -40),
            child: Column(
              children: [
                Text(
                  "WELCOME TO a7gzle".tr(),
                  style: TextStyles.font16neartograyregular.copyWith(
                    fontSize: 20,
                    fontFamily: "Rubik",
                  ),
                ),

                SizedBox(height: 30.h),
                OnboardingRichText(),
                SizedBox(height: 15.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.h),
                  child: AppTextButton(
                    raduisbutton: 30.sp,
                    onpressed: () async {
                      final token = await SharedPrefHelper.getSecuredString(
                        SharedPrefKeys.userToken,
                      );

                      if (token != null && token.isNotEmpty) {
                        final userType = await SharedPrefHelper.getString(
                          SharedPrefKeys.usertype,
                        );

                        if (userType != null) {
                          context.pushNamed(
                            RoutesConstant.home,
                            aurgment: userType,
                          );
                        } else {
                          context.pushNamed(RoutesConstant.login);
                        }
                      } else {
                        context.pushNamed(RoutesConstant.signup);
                      }
                    },

                    textButton: "Get started".tr(),
                    textStyle: TextStyles.font18whitemideum,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
