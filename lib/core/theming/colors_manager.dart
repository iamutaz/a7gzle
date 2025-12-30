import 'package:flutter/material.dart';

class ColorsManager {
  // دالة ذكية تتحسس وضع الثيم الحالي
  static bool isDark(BuildContext context) => Theme.of(context).brightness == Brightness.dark;

  // --- ألوان ثابتة لا تلمسا (بتبقى متل ما هي بالوضعين) ---
  static const Color mainBlue = Color(0xFF247CFF);
  static const Color gray = Color(0xFF757575);
  static const Color lightGray = Color(0xFF6F6F6F);
  static const Color lighterGray = Color(0xFF98A2B3);
  static const Color morelightgray = Color(0xFF9E9E9E);
  static const Color neartonormalgray = Color(0xFF666876);
  static const Color sui = Color.fromARGB(36, 36, 124, 255);

  // --- ألوان "ذكية" (بتقلب موازينها تلقائياً) ---
  // ملاحظة: حولناها لـ functions عشان تقبل الـ context وتاخد اللون الصح
  
 static Color offwhite(BuildContext context) => 
    isDark(context) ? const Color(0xFF121212) : const Color(0xFFFDFDFF);

  static Color enabledBorderbordercolor(BuildContext context) => 
      isDark(context) ? const Color(0xFF333333) : const Color(0xFFEDEDED);

  static Color lightblack(BuildContext context) => 
      isDark(context) ? Colors.white : const Color(0xFF242424);

  static Color labelcolor(BuildContext context) => 
      isDark(context) ? Colors.white : const Color(0xFF151A2D);

  static Color onboardingblack(BuildContext context) => 
      isDark(context) ? Colors.white : const Color(0xFF191D31);
}