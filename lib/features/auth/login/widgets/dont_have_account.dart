import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
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
            text: "Don't Have An Account? ",
            style: TextStyles.font13lgihtblackmiduem,
          ),
          TextSpan(
            text: " Sing up",
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
