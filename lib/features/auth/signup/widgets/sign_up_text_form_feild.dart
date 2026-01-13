import 'package:a7gzle/core/helpers/app_regex.dart';
import 'package:a7gzle/core/widgets/app_text_form_feild.dart';
import 'package:a7gzle/features/auth/signup/data/cubit/sign_up_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpTextFormFeild extends StatefulWidget {
  const SignUpTextFormFeild({super.key});

  @override
  State<SignUpTextFormFeild> createState() => _SignUpTextFormFeildState();
}

class _SignUpTextFormFeildState extends State<SignUpTextFormFeild> {
  bool isobscurepasstext = true;
  bool isobscurepassconfitext = true;
  TextEditingController passcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    passcontroller = context.read<SignUpCubit>().passwordcontroller;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().firstpagekeyform,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            AppTextFormFeild(
              controller: context.read<SignUpCubit>().numbercontroller,
              feildname: "Number".tr(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "this feild can't be empty".tr();
                } else if (!AppRegex.isNumberValid(value)) {
                  return "enter a valid number ".tr();
                }
              },
            ),
            SizedBox(height: 30.h),
            AppTextFormFeild(
              controller: context.read<SignUpCubit>().passwordcontroller,
              feildname: "Password".tr(),
              isobscuretext: isobscurepasstext,
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    isobscurepasstext = !isobscurepasstext;
                  });
                },
                child: Icon(
                  isobscurepasstext ? Icons.visibility_off : Icons.visibility,
                  size: 25,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "this feild can't be empty".tr();
                }
                if (!AppRegex.hasMinLength(value)) {
                  return "password should be 8 length word".tr();
                }
              },
            ),
            SizedBox(height: 30.h),
            AppTextFormFeild(
              isobscuretext: isobscurepassconfitext,
              controller: context
                  .read<SignUpCubit>()
                  .passwordconfirmationcontroller,
              feildname: "password confirmation".tr(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "this feild can't be empty".tr();
                } else if (value != passcontroller.text) {
                  return "no matching with the password".tr();
                }
              },
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    isobscurepassconfitext = !isobscurepassconfitext;
                  });
                },
                child: Icon(
                  isobscurepassconfitext
                      ? Icons.visibility_off
                      : Icons.visibility,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
