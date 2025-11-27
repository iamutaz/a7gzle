import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/login/screens/login/widgets/login_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.asset("assets/images/modern-home.png"),
            ),
            SizedBox(height: 55.h),
            Center(
              child: Text(
                "Sign Up To Your Account",
                style: TextStyles.font24blackbold,
              ),
            ),
            SizedBox(height: 30.h),
            LoginTextFormFeild(),
          ],
        ),
      ),
    );
  }
}
