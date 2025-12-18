import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Location", style: TextStyles.font20blacksemibold),
        SizedBox(height: 15.h),
        Row(
          children: [
            SvgPicture.asset("assets/svgs/location.svg", width: 20),
            SizedBox(width: 10.h),
            Text("Damascus", style: TextStyles.font16lightblackregular),
          ],
        ),
      ],
    );
  }
}
