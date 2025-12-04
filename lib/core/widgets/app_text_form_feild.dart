import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class AppTextFormFeild extends StatelessWidget {
  InputBorder? focusedBorder;
  BorderRadius? borderRadius;
  InputBorder? enabledBorder;
  InputBorder? errorBorder;
  bool? isobscuretext;
  TextStyle? hintStyle;
  Widget? suffixIcon;

  AppTextFormFeild({
    super.key,
    this.focusedBorder,
    this.borderRadius,
    this.enabledBorder,
    this.errorBorder,
    this.isobscuretext,
    this.hintStyle,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.font16darkgraymiduem,
      obscureText: isobscuretext ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsManager.lightGray,
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
          child: suffixIcon,
        ),

        isDense: true,
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.orange, width: 1),
              borderRadius: borderRadius ?? BorderRadius.circular(30),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.gray, width: 1),
              borderRadius: borderRadius ?? BorderRadius.circular(30),
            ),
        errorBorder:
            errorBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.red, width: 1),
            ),
      ),
    );
  }
}
