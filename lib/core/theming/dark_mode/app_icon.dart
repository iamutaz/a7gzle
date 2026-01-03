import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AppIcon extends StatelessWidget {
  final String path;
  final double? width;
  final double? height;

  const AppIcon({
    super.key,
    required this.path,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      //  اللون بيتحدد تلقائياً بناءً على الثيم
      colorFilter: ColorFilter.mode(
        ColorsManager.lightblack(context), 
        BlendMode.srcIn,
      ),
    );
  }
}