import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndCondtions extends StatelessWidget {
  const TermsAndCondtions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(height: 1.6),
        children: <TextSpan>[
          TextSpan(
            text: "by signing in you agree to our ",
            style: TextStyles.font13morelightgrayregular,
          ),
          TextSpan(
            text: " privacy & policy ",
            style: TextStyles.font13lgihtblackmiduem,
          ),
          TextSpan(
            text: " and   \n",
            style: TextStyles.font13morelightgrayregular,
          ),
          TextSpan(
            text: "Terms & condtions",
            style: TextStyles.font13lgihtblackmiduem,
          ),
        ],
      ),
    );
  }
}
