import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ApartmentProperty extends StatelessWidget {
  final int bathnumber;
  final int roomnumber;
  final int area;
  const ApartmentProperty({
    super.key,
    required this.area,
    required this.bathnumber,
    required this.roomnumber,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildHomeProperty(
          path: "assets/svgs/bed.svg",
          text: "beds_count".tr(args: [roomnumber.toString()]),
        ),
        _buildHomeProperty(
          path: "assets/svgs/bath.svg",
          text: "bath_count".tr(args: [bathnumber.toString()]),
          height: 25,
        ),
        _buildHomeProperty(
          path: "assets/svgs/distance.svg",
          text: "area_size".tr(args: [area.toString()]),
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
