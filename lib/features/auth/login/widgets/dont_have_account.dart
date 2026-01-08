import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/colors_manager.dart'; 
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: "Don't Have An Account? ".tr(),
            style: TextStyles.font13lgihtblackmiduem.copyWith(
              color: ColorsManager.lightblack(context),
            ),
          ),
          TextSpan(
            text: " Sign up".tr(), 
            style: TextStyles.font13mainbluesemibold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(RoutesConstant.signup);
              },
          ),
        ],
      ),
    );
  }
}