import 'package:a7gzle/core/widgets/text_feild_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTextFormFeild extends StatelessWidget {
  bool? isobscuretext = false;
  LoginTextFormFeild({super.key, this.isobscuretext});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            TextFeildItem(hintText: "Name"),
            SizedBox(height: 30.h),
            TextFeildItem(hintText: "Email"),
            SizedBox(height: 30.h),
            TextFeildItem(
              hintText: "Password",
              isobscuretext: isobscuretext,
              suffixIcon: Icon(Icons.visibility, size: 25),
            ),
          ],
        ),
      ),
    );
  }
}
