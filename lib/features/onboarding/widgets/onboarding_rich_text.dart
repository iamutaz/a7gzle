import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/widgets.dart';

class OnboardingRichText extends StatelessWidget {
  const OnboardingRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyles.font32blacksemibold.copyWith(fontFamily: "Rubik"),

        children: [
          TextSpan(text: "Let's Get You Closer\nTo "),
          TextSpan(
            text: "Your Ideal Home",
            style: TextStyle(color: ColorsManager.mainBlue),
          ),
        ],
      ),
    );
  }
}
