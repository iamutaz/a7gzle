import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_button.dart';
import 'package:a7gzle/features/auth/login/widgets/dont_have_account.dart';
import 'package:a7gzle/features/auth/login/widgets/log_in_text_form_feild.dart';
import 'package:a7gzle/features/auth/signup/widgets/terms_and_condtions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset("assets/images/auth_image.png"),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Log in", style: TextStyles.font24mainbluebold),
                    SizedBox(height: 10.h),
                    Text(
                      "Welcome back , You have been missed !",
                      style: TextStyles.font17lightgrayregular,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              LogInTextFormFeild(),
              SizedBox(height: 30.h),
              Center(child: TermsAndCondtions()),
              SizedBox(height: 20.h),
              Center(child: DontHaveAccount()),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0.w),
                child: AppTextButton(
                  onpressed: () {},
                  textButton: "log in",
                  textStyle: TextStyles.font16whitesemibold,
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
