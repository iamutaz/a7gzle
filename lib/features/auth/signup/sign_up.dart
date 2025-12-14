import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_button.dart';
import 'package:a7gzle/features/auth/signup/data/cubit/sign_up_cubit.dart';
import 'package:a7gzle/features/auth/signup/widgets/already_have_an_account.dart';
import 'package:a7gzle/features/auth/signup/widgets/terms_and_condtions.dart';
import 'package:a7gzle/features/auth/signup/widgets/sign_up_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Image.asset("assets/images/auth_image.png"),
              ),
              SizedBox(height: 55.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sign Up", style: TextStyles.font24mainbluebold),
                    SizedBox(height: 10.h),
                    Text(
                      "sign up now and start exploring all that our\napp has to offer. We're excited to welcome\n you to our community",
                      style: TextStyles.font17lightgrayregular,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              SignUpTextFormFeild(),
              SizedBox(height: 15.h),
              Center(child: TermsAndCondtions()),
              SizedBox(height: 20.h),
              Center(child: AlreadyHaveAnAccount()),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0.w),
                child: AppTextButton(
                  onpressed: () {
                    final cubit = context.read<SignUpCubit>();

                    if (context
                        .read<SignUpCubit>()
                        .firstpagekeyform
                        .currentState!
                        .validate()) {
                      context.read<SignUpCubit>().saveStepOne();
                      context.pushNamed(RoutesConstant.info, aurgment: cubit);
                    }
                  },
                  textButton: "Next",
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
