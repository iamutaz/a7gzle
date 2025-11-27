import 'package:a7gzle/core/helpers/font_weight_helper.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/widgets/app_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFeildItem extends StatelessWidget {
  final String hintText;
  bool? isobscuretext;
  Widget? suffixIcon;

  TextFeildItem({
    super.key,
    required this.hintText,
    this.isobscuretext,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeightHelper.mideum,
            color: ColorsManager.black,
          ),
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: AppTextFormFeild(
            isobscuretext: isobscuretext,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
