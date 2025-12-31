import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeImages extends StatelessWidget {
  const HomeImages({super.key});

  @override
  Widget build(BuildContext context) {
    // اللون اللي عم نسحب منه الشفافية
    final Color shadowColor = ColorsManager.scaffoldColor(context);

    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            shadowColor, // لون كامل تحت
            shadowColor.withOpacity(0.9), // شفافية خفيفة جداً
            shadowColor.withOpacity(0.0), // شفافية كاملة (بيختفي)
          ],
          stops: const [
            0.15,
            0.4,
            0.6,
          ], // المسافات القديمة اللي كانت بتعمل دمج سريع
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(height: 90.h),
              Image.asset('assets/images/Checkbox.png'),
              SizedBox(height: 15.h),
              Image.asset('assets/images/Checkbox-1.png'),
              SizedBox(height: 25.h),
              Image.asset('assets/images/Container.png'),
              SizedBox(height: 15.h),
              Image.asset('assets/images/Checkbox-2.png'),
            ],
          ),

          Column(
            children: [
              SizedBox(height: 90.h),
              Image.asset('assets/images/Checkbox11.png'),
              SizedBox(height: 15.h),
              Image.asset('assets/images/Checkbox-12.png'),
              SizedBox(height: 25.h),
              Image.asset('assets/images/Checkbox-13.png'),
              SizedBox(height: 15.h),
              Image.asset('assets/images/Checkbox-2.png'),
            ],
          ),

          Column(
            children: [
              SizedBox(height: 90.h),
              Image.asset('assets/images/Checkbox111.png'),
              SizedBox(height: 15.h),
              Image.asset('assets/images/Tooltip.png'),
              SizedBox(height: 10.h),
              Image.asset('assets/images/Checkbox333.png'),
              SizedBox(height: 25.h),
              Image.asset('assets/images/Checkbox-2.png'),
            ],
          ),
        ],
      ),
    );
  }
}
