import 'package:a7gzle/core/theming/colors_manager.dart'; 
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TermsAndCondtions extends StatelessWidget {
  const TermsAndCondtions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: "by signing in you agree to our ".tr(),
            style: TextStyles.font13morelightgrayregular,
          ),
          TextSpan(
            text: " privacy & policy ".tr(),
            style: TextStyles.font13lgihtblackmiduem.copyWith(
              color: ColorsManager.lightblack(context),
            ),
          ),
          TextSpan(
            text: " and \n".tr(),
            style: TextStyles.font13morelightgrayregular,
          ),
          TextSpan(
            text: "Terms & condtions".tr(),
            style: TextStyles.font13lgihtblackmiduem.copyWith(
              color: ColorsManager.lightblack(context),
            ),
          ),
        ],
      ),
    );
  }
}