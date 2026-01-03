import 'package:flutter/material.dart';

class ColorsManager {
  // دالة ذكية تتحسس وضع الثيم الحالي
  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  // --- ألوان ثابتة (بتبقى متل ما هي بالوضعين) ---
  static const Color mainBlue = Color(0xFF247CFF);
  static const Color gray = Color(0xFF757575);
  static const Color lightGray = Color(0xFF6F6F6F);
  static const Color lighterGray = Color(0xFF98A2B3);
  static const Color morelightgray = Color(0xFF9E9E9E);
  static const Color neartonormalgray = Color(0xFF666876);
  static const Color sui = Color.fromARGB(36, 36, 124, 255);

  // --- ألوان "ذكية" (بتقلب موازينها تلقائياً) ---

  // 1. لون خلفية الصفحات

  static Color scaffoldColor(BuildContext context) => isDark(context)
      ? const Color(0xFF1C1C1E)
      : const Color.fromARGB(255, 246, 246, 248);

  // 2. لون الحاويات/الكروت (اليسار بالصورة)

  static Color offwhite(BuildContext context) =>
      isDark(context) ? const Color(0xFF2C2C2E) : const Color(0xFFFDFDFF);

  // 3. لون حدود الحقول (Enabled Border)
  // هاد اللي بحدد شكل الـ TextFields والإطارات
  static Color enabledBorderbordercolor(BuildContext context) =>
      isDark(context) ? const Color(0xFF28272C) : const Color(0xFFEDEDED);

  // 4. لون النصوص الأساسية)

  static Color lightblack(BuildContext context) =>
      isDark(context) ? const Color(0xFFF1F1F3) : const Color(0xFF242424);

  // 5. لون العناوين (Labels)
  static Color labelcolor(BuildContext context) =>
      isDark(context) ? Colors.white : const Color(0xFF151A2D);

  // 6. لون شاشات التعريف (Onboarding)
  static Color onboardingblack(BuildContext context) =>
      isDark(context) ? Colors.white : const Color(0xFF191D31);
}
