import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/owner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UserInfo extends StatelessWidget {
  final Owner owner;
  const UserInfo({super.key, required this.owner});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.network(
            owner.profilephoto,
            width: 60,
            height: 60,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(owner.firstname, style: TextStyles.font20blacksemibold),
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
