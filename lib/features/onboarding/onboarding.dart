import 'package:a7gzle/core/helpers/constant.dart';
import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_button.dart';
import 'package:a7gzle/features/onboarding/widgets/home_images.dart';
import 'package:a7gzle/features/onboarding/widgets/onboarding_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 15),

          // Container(
          //   foregroundDecoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       begin: Alignment(0, 1.4),
          //       end: Alignment.topCenter,
          //       colors: [Colors.white, Colors.white.withOpacity(0.0)],
          //       stops: const [0.20, 0.55],
          //     ),
          //   ),
          //   padding: const EdgeInsets.symmetric(horizontal: 10),

          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       Column(
          //         children: [
          //           const SizedBox(height: 80),
          //           Image.asset('assets/images/Checkbox.png'),
          //           const SizedBox(height: 10),
          //           Image.asset('assets/images/Checkbox-1.png'),
          //           const SizedBox(height: 10),
          //           Image.asset('assets/images/Container.png'),
          //           const SizedBox(height: 10),
          //           Image.asset('assets/images/Checkbox-2.png'),
          //         ],
          //       ),

          //       Column(
          //         children: [
          //           const SizedBox(height: 80),
          //           Image.asset('assets/images/Checkbox11.png'),
          //           const SizedBox(height: 10),
          //           Image.asset('assets/images/Checkbox-12.png'),
          //           const SizedBox(height: 10),
          //           Image.asset('assets/images/Checkbox-13.png'),
          //           const SizedBox(height: 10),
          //           Image.asset('assets/images/Checkbox-2.png'),
          //         ],
          //       ),

          //       Column(
          //         children: [
          //           const SizedBox(height: 80),
          //           Image.asset('assets/images/Checkbox111.png'),
          //           const SizedBox(height: 10),
          //           Image.asset('assets/images/Tooltip.png'),
          //           const SizedBox(height: 10),
          //           Image.asset('assets/images/Checkbox333.png'),
          //           const SizedBox(height: 10),
          //           Image.asset('assets/images/Checkbox-2.png'),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          HomeImages(),
          SizedBox(height: 30.h),
          Transform.translate(
            offset: Offset(0, -40),
            child: Column(
              children: [
                Text(
                  "WELCOME TO a7gzle",
                  style: TextStyles.font16neartograyregular.copyWith(
                    fontSize: 20,
                    fontFamily: "Rubik",
                  ),
                ),

                SizedBox(height: 30.h),

                // RichText(
                //   textAlign: TextAlign.center,
                //   text: TextSpan(
                //     style: const TextStyle(
                //       fontSize: 32,
                //       fontWeight: FontWeight.bold,
                //       color: Color(0xFF191D31),
                //     ),
                //     children: [
                //       const TextSpan(text: "Let's Get You Closer\nTo "),
                //       TextSpan(
                //         text: "Your Ideal Home",
                //         style: TextStyle(color: Color(0xFF247CFF)),
                //       ),
                //     ],
                //   ),
                // ),
                OnboardingRichText(),
                SizedBox(height: 30.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.h),
                  child: AppTextButton(
                    raduisbutton: 30.sp,
                    onpressed: () {
                      if (isLoggedInUser) {
                        context.pushNamed(RoutesConstant.home);
                      } else {
                        context.pushNamed(RoutesConstant.signup);
                      }
                    },
                    textButton: "Get started",
                    textStyle: TextStyles.font18whitemideum,
                  ),
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Color(0xFF247CFF),
                //     fixedSize: Size(390, 59),
                //   ),

                //   onPressed: () {
                //     context.pushNamed(RoutesConstant.login);
                //   },
                //   child: Text(
                //     "Get Started",
                //     style: TextStyle(color: Colors.white, fontSize: 18),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
