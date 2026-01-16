import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class ThemeService {
  static final ThemeService instance = ThemeService._();
  ThemeService._(); 

  final String _key = 'isDarkMode';
  bool _isDark = false; 
  Future<void> init() async {
    _isDark = await SharedPrefHelper.getBool(_key) ?? false;
  }
  ThemeMode get themeMode => _isDark ? ThemeMode.dark : ThemeMode.light;

  void switchTheme() {
    _isDark = !_isDark; // قلب القيمة في الذاكرة
    Get.changeThemeMode(_isDark ? ThemeMode.dark : ThemeMode.light);
    SharedPrefHelper.setData(_key, _isDark);
  }
}