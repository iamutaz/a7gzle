import 'package:a7gzle/core/helpers/app_regex.dart';
import 'package:a7gzle/core/widgets/app_text_form_feild.dart';
import 'package:a7gzle/features/auth/login/data/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInTextFormFeild extends StatefulWidget {
  const LogInTextFormFeild({super.key});

  @override
  State<LogInTextFormFeild> createState() => _LogInTextFormFeildState();
}

class _LogInTextFormFeildState extends State<LogInTextFormFeild> {
  bool isobscuretext = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubitCubit>().formkey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            AppTextFormFeild(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "this feild can't be empty";
                } else if (!AppRegex.isNumberValid(value)) {
                  return "enter a valid number ";
                }
              },
              feildname: "Number",
              controller: context.read<LoginCubitCubit>().numberController,
            ),
            SizedBox(height: 30.h),
            AppTextFormFeild(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "this feild can't be empty";
                }
                if (!AppRegex.hasMinLength(value)) {
                  return "must be 8 length at least";
                }
              },
              feildname: "Password",
              controller: context.read<LoginCubitCubit>().passController,
              isobscuretext: isobscuretext,
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    isobscuretext = !isobscuretext;
                  });
                },
                child: Icon(
                  isobscuretext ? Icons.visibility_off : Icons.visibility,
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
