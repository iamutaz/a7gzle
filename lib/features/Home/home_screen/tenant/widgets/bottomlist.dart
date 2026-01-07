import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonList extends StatefulWidget {
  // هاد التابع شغلتو يقول شو اليوزر كبس وبيبعتو لبرا
  final Function(String) onCategoryChanged;

  const ButtonList({super.key, required this.onCategoryChanged});

  @override
  State<ButtonList> createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList> {
  // متغير بيحفظ رقم الزر المكبوس حالياً)
  int selectedIndex = 0;

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
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      primary: false,
      itemCount: titles.length,
      itemBuilder: (context, index) {
        // عم نشوف اذا الزر كابس عليه اليوزر ولا لا
        bool isSelected = selectedIndex == index;

        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSelected
                  ? ColorsManager.mainBlue
                  : const Color.fromARGB(237, 211, 224, 244),
              elevation: 0, 
              fixedSize: Size(widths[index], 41),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), 
              ),
            ),
            onPressed: () {
              setState(() {
                selectedIndex = index;
              });
              //عم ننادي التابع وبنبعت معو اسم الزر الي انكبس 
              widget.onCategoryChanged(titles[index]);
            },
            child: Text(
              titles[index],
              style: TextStyles.font14blackmideum.copyWith(
                color: isSelected ? Colors.white : const Color(0xff191D31),
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ),
        );
      },
    );
  }
}