import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  String? description;
  Overview({super.key, this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Overview".tr(), style: TextStyles.font20blacksemibold),
        SizedBox(height: 10),
        Text(
          description?.isNotEmpty == true ? description! : "no desc".tr(),
          style: TextStyles.font16neartograyregular,
        ),
      ],
    );
  }
}
