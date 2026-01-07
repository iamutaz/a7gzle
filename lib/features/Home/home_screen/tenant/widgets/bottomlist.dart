import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart'; 
import 'package:flutter/material.dart';

class ButtonList extends StatelessWidget {
  const ButtonList({super.key});

  final List<String> titles = const [
    'All',
    'House',
    'Villa',
    'Apartments',
    'Others',
  ];

  final List<double> widths = const [58, 82, 68, 118, 84];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        physics: const BouncingScrollPhysics(),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: index == 0
                    ? ColorsManager.mainBlue
                    : const Color.fromARGB(237, 211, 224, 244),
                elevation: 0, 
                fixedSize: Size(widths[index], 41),
                padding: const EdgeInsets.symmetric(horizontal: 10), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text(
                titles[index],
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font14blackmideum.copyWith(
                  color: index == 0 ? Colors.white : const Color(0xff191D31),
                  fontWeight: index == 0 ? FontWeight.w600 : FontWeight.w400,
                ), 
              ),
            ),
          );
        },
      ),
    );
  }
}