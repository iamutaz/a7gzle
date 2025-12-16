import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppTextButton(
          onpressed: () async {
            SharedPrefHelper.clearAllSecuredData();
          },
          textButton: "test",
          textStyle: TextStyles.font18whitemideum,
        ),
      ),
    );
  }
}
