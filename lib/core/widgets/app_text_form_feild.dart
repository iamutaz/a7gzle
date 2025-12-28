import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormFeild extends StatelessWidget {
  InputBorder? focusedBorder;
  BorderRadius? borderRadius;
  InputBorder? enabledBorder;
  InputBorder? errorBorder;
  InputBorder? fouccsederrorBorder;
  bool? isobscuretext;
  TextStyle? hintStyle;
  Widget? suffixIcon;
  String feildname;
  TextEditingController? controller;
  void Function()? onTap;
  Function(String?)? validator;
  bool? readOnly;

  AppTextFormFeild({
    super.key,
    this.focusedBorder,
    this.borderRadius,
    this.enabledBorder,
    this.errorBorder,
    this.isobscuretext,
    this.hintStyle,
    this.fouccsederrorBorder,
    this.suffixIcon,
    required this.feildname,
    this.onTap,
    required this.validator,
    this.controller,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validator!(value),
      controller: controller,

      style: TextStyles.font16graymiduem,
      obscureText: isobscuretext ?? false,
      decoration: InputDecoration(
        label: Padding(
          padding: EdgeInsets.only(right: 15.0.h, left: 6.h),
          child: Text(feildname),
        ),
        labelStyle: TextStyles.font16labelblackmideum,
        floatingLabelStyle: TextStyles.font16labelblackmideum.copyWith(
          fontSize: 20,
          color: ColorsManager.mainBlue,
        ),

        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        fillColor: ColorsManager.offwhite,
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
          child: suffixIcon,
        ),
        isDense: true,
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.5),
              borderRadius: borderRadius ?? BorderRadius.circular(30),
            ),
        focusedErrorBorder:
            fouccsederrorBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1),
              borderRadius: borderRadius ?? BorderRadius.circular(30),
            ),

        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.gray, width: 1.5),
              borderRadius: borderRadius ?? BorderRadius.circular(30),
            ),
        errorBorder:
            errorBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1),
              borderRadius: borderRadius ?? BorderRadius.circular(30),
            ),
      ),
      onTap: onTap,
    );
  }
}
