import 'package:a7gzle/core/widgets/app_text_form_feild.dart';
import 'package:flutter/material.dart';
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
          ],
        ),
      ),
    );
  }
}
