import 'package:a7gzle/core/helpers/font_weight_helper.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24blackbold = TextStyle(
    fontSize: 24.sp,
    color: ColorsManager.black,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font14lightergrayregular = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.gray,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16darkgraymiduem = TextStyle(
    color: ColorsManager.hintcolor,
    fontSize: 16,
    fontWeight: FontWeightHelper.mideum,
  );
}
