import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class ThemeService {
  static final ThemeService instance = ThemeService._();
  ThemeService._(); 

  final String _key = 'isDarkMode';

  // جعلناها خاصة (private) وبدون static لضمان تحديثها بشكل صحيح
  bool _isDark = false; 

  // ميثود القراءة عند تشغيل التطبيق
  Future<void> init() async {
    // ننتظر القيمة من SharedPreferences، وإذا كانت فارغة نفترض أنها false (Light)
    _isDark = await SharedPrefHelper.getBool(_key) ?? false;
  }

  // Getter للحصول على الوضع الحالي
  ThemeMode get themeMode => _isDark ? ThemeMode.dark : ThemeMode.light;

  // تابع تبديل الثيم
  void switchTheme() {
    _isDark = !_isDark; // قلب القيمة في الذاكرة
    
    // إخبار GetX بتغيير الثيم فوراً
    Get.changeThemeMode(_isDark ? ThemeMode.dark : ThemeMode.light);
    
    // حفظ القيمة الجديدة في الذاكرة الدائمة
    SharedPrefHelper.setData(_key, _isDark);
  }
}