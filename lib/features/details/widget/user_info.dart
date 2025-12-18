import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            "assets/images/default_profile.png",
            width: 60,
            height: 60,
          ),
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Natasha", style: TextStyles.font20blacksemibold),
            SizedBox(height: 6),
            Text("Owner", style: TextStyles.font14neartograymiduem),
          ],
        ),
        Spacer(),
        SvgPicture.asset("assets/svgs/messag_icon.svg", width: 28, height: 28),
      ],
    );
  }
}
