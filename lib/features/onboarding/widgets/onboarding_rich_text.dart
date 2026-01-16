import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:easy_localization/easy_localization.dart'; 

class OnboardingRichText extends StatelessWidget {
  const OnboardingRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyles.font32blacksemibold.copyWith(fontFamily: "Rubik"),
        children: [
          TextSpan(
            text: "Let's Get You Closer\nTo ".tr(), 
            style: TextStyle(color: ColorsManager.labelcolor(context)),
          ),
          TextSpan(
            text: "Your Ideal Home".tr(),
            style: TextStyle(color: ColorsManager.mainBlue),
          ),
        ],
      ),
    );
  }
}