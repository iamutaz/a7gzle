import 'package:a7gzle/core/helpers/font_weight_helper.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  //هون نصوص مالها لون لانها حتاخد لون من الثيممممم
  // Light Mode  → أسود
  // Dark Mode   → أبيض

  static TextStyle font24blackbold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    fontFamily: "Rubik",
  );

  static TextStyle font24blacksemibold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.semibold,
    fontFamily: "Rubik",
  );

  static TextStyle font16lightblackregular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    fontFamily: "Rubik",
  );

  static TextStyle font18blackmideum = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.mideum,
    fontFamily: "Rubik",
  );
  static TextStyle font18blacksemibold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semibold,
    fontFamily: "Rubik",
  );

  static TextStyle font18blackbold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
    fontFamily: "Rubik",
  );

  static TextStyle font16labelblackmideum = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.mideum,
    fontFamily: "Rubik",
  );

  static TextStyle font13lgihtblackmiduem = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.mideum,
  );

  static TextStyle font14blackmideum = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.mideum,
  );

  static TextStyle font20blacksemibold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.semibold,
  );

  static TextStyle font32blacksemibold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.semibold,
  );

  //  نصوص ثابتة اللون

  static TextStyle font18whitemideum = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.mideum,
    color: Colors.white, // ثابت
  );

  static TextStyle font16whitesemibold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semibold,
    color: Colors.white,
  );

  static TextStyle font24mainbluebold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
    fontFamily: "Rubik",
  );
  static TextStyle font18mainbluesemibold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semibold,
    color: ColorsManager.mainBlue,
    fontFamily: "Rubik",
  );

  static TextStyle font12mainbluesemibold = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.semibold,
    color: ColorsManager.mainBlue,
    fontFamily: "Rubik",
  );

  static TextStyle font13mainbluesemibold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semibold,
    color: ColorsManager.mainBlue,
  );

  //  نصوص رمادية
  // الرمادي مناسب للوضعين لهيك تركتو ثابت

  static TextStyle font16lightergrayregular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.gray,
  );

  static TextStyle font16graymiduem = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.mideum,
    color: ColorsManager.gray,
  );

  static TextStyle font17lightgrayregular = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lightGray,
  );

  static TextStyle font13morelightgrayregular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.morelightgray,
  );

  static TextStyle font14neartograymiduem = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.mideum,
    color: ColorsManager.neartonormalgray,
  );

  static TextStyle font16neartograyregular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.neartonormalgray,
  );
}
