import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ApartmentProperty extends StatelessWidget {
  const ApartmentProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildHomeProperty(path: "assets/svgs/bed.svg", text: "8 beds"),
        _buildHomeProperty(
          path: "assets/svgs/bath.svg",
          text: "3 bath",
          height: 25,
        ),
        _buildHomeProperty(
          path: "assets/svgs/distance.svg",
          text: "200 hec",
          height: 22,
        ),
      ],
    );
  }
}

Row _buildHomeProperty({
  required String path,
  required String text,
  double? height,
}) {
  return Row(
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: ColorsManager.sui,
        child: SvgPicture.asset(
          path,
          width: 18,
          height: height ?? 18,
          colorFilter: ColorFilter.mode(
            ColorsManager.mainBlue,
            BlendMode.srcIn,
          ),
        ),
      ),
      SizedBox(width: 10.w),
      Text(text, style: TextStyles.font14blackmideum),
    ],
  );
}
