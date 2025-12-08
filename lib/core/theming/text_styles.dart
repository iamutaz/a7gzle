import 'package:a7gzle/core/helpers/font_weight_helper.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24blackbold = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font16lightergrayregular = TextStyle(
    fontSize: 16.sp,
    color: ColorsManager.gray,
    fontWeight: FontWeightHelper.regular,
  );

  // static TextStyle font16darkgraymiduem = TextStyle(
  //   color: ColorsManager.enabledBorderbordercolor,
  //   fontSize: 16.sp,
  //   fontWeight: FontWeightHelper.mideum,
  // );
  static TextStyle font16graymiduem = TextStyle(
    color: ColorsManager.gray,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.mideum,
  );

  static TextStyle font18blackmideum = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.mideum,
    color: Colors.black,
  );
  static TextStyle font16labelblackmideum = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.mideum,
    color: ColorsManager.labelcolor,
  );
  static TextStyle font17lightgrayregular = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lightGray,
  );
  static TextStyle font24mainbluebold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font16whitesemibold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semibold,
    color: Colors.white,
  );
  static TextStyle font13morelightgrayregular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.morelightgray,
  );
  static TextStyle font13lgihtblackmiduem = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.mideum,
    color: ColorsManager.lightblack,
  );
  static TextStyle font13mainbluesemibold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semibold,
    color: ColorsManager.mainBlue,
  );
}
