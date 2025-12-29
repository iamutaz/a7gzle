import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class ThemeService {
  static final ThemeService instance = ThemeService._();
  ThemeService._(); 

  // المفتاح لحفظ وضع الثيم في SharedPreferences
  final String _key = 'isDarkMode';

  // تخزين الوضع الحالي لتسهيل الوصول 
  static bool isDark = false;



  // هاد التابع مشان: قراءة وضع الثيم المحفوظ على الجهاز قبل عرض التطبيق
  Future<void> init() async {
    isDark = await SharedPrefHelper.getBool(_key); // بجيب القيمة من SharedPreferences
  }

  // Getter للحصول على ThemeMode

  // إذا isDark = true → Dark Theme
  // إذا isDark = false → Light Theme
  ThemeMode get themeMode => isDark ? ThemeMode.dark : ThemeMode.light;


  // تابع تبديل الثيم

  void switchTheme() {
    isDark = !isDark; // قلب الوضع الحالي
    // تطبيق الثيم الجديد فورا باستخدام GetX
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
    // حفظ الخيار الجديد على الجهاز ليبقى محفوظ عند إعادة التشغيل
    SharedPrefHelper.setData(_key, isDark);
  }
}
