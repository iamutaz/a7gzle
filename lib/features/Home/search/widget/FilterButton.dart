import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';

class CustomFilterButton extends StatelessWidget {
  final String text;
  final double width;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomFilterButton({
    super.key,
    required this.text,
    required this.width,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // فحص إذا كان المود دارك أم لا
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      width: width,
      height: 33,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          // اللون في حال لم يكن الزر محدداً: 
          // إذا دارك مود سيعطي اللون الأسود أو الغامق جداً
          // إذا لايت مود سيعطي اللون الفاتح الأصلي
          backgroundColor: isSelected 
              ? ColorsManager.mainBlue 
              : (isDark ? const Color(0xFF333333) : const Color(0xEBECF3FD)),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              // اللون يسحب من الميثود الموجود عندك فعلياً
              color: isSelected 
                  ? Colors.white 
                  : ColorsManager.lightblack(context),
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}