import 'package:a7gzle/core/widgets/app_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpTextFormFeild extends StatefulWidget {
  const SignUpTextFormFeild({super.key});

  @override
  State<SignUpTextFormFeild> createState() => _SignUpTextFormFeildState();
}

class _SignUpTextFormFeildState extends State<SignUpTextFormFeild> {
  bool isobscuretext = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            AppTextFormFeild(feildname: "Number"),
            SizedBox(height: 30.h),
            AppTextFormFeild(
              feildname: "Password",
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
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
