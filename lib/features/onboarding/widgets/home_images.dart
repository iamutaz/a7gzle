import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeImages extends StatelessWidget {
  const HomeImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 1.4),
          end: Alignment.topCenter,
          colors: [Colors.white, Colors.white.withOpacity(0.0)],
          stops: const [0.20, 0.55],
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
