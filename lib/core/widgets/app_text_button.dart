import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback onpressed;
  final String textButton;
  final TextStyle textStyle;
  final double? horizontalpadding,
      verticalpadding,
      hieghtbutton,
      widthbutton,
      raduisbutton;
  final Color? buttoncolor;

  AppTextButton({
    super.key,
    required this.onpressed,
    required this.textButton,
    required this.textStyle,
    this.horizontalpadding,
    this.verticalpadding,
    this.hieghtbutton,
    this.widthbutton,
    this.raduisbutton,
    this.buttoncolor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(raduisbutton ?? 16),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll<Color>(
          buttoncolor ?? ColorsManager.mainBlue,
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalpadding ?? 20.w,
            vertical: verticalpadding ?? 14.h,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(widthbutton ?? double.maxFinite, hieghtbutton ?? 52.h),
        ),
      ),
      onPressed: onpressed,
      child: Text(textButton, style: textStyle),
    );
  }
}
