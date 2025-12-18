import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Overview", style: TextStyles.font20blacksemibold),
        SizedBox(height: 10),
        Text(
          "Sleek, modern 2-bedroom apartment with open living space, high-end finishes, and city views. Minutes from downtown, dining, and transit.",
          style: TextStyles.font16neartograyregular,
        ),
      ],
    );
  }
}
