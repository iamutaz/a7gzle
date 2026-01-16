import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
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
          padding: const EdgeInsetsDirectional.only(start: 8),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSelected
                  ? ColorsManager.mainBlue
                  : const Color.fromARGB(237, 211, 224, 244),
              elevation: 0,
              minimumSize: const Size(80, 50),
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
              titles[index].tr(),
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
