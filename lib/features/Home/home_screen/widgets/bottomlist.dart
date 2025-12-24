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
                    ? const Color(0xFF0061FF)
                    : const Color.fromARGB(237, 211, 224, 244),
                fixedSize: Size(widths[index], 41),
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text(
                titles[index],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: index == 0 ? Colors.white : const Color(0xff191D31),
                  fontSize: 14,
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
