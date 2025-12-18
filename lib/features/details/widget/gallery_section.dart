import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Gallery", style: TextStyles.font20blacksemibold),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 118, height: 118, child: Placeholder()),
            SizedBox(width: 118, height: 118, child: Placeholder()),
            SizedBox(width: 118, height: 118, child: Placeholder()),
          ],
        ),
      ],
    );
  }
}
