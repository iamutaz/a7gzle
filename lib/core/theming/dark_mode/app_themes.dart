import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppThemes {
  //  الثيم الفاتح
  static final lightTheme = ThemeData(
    useMaterial3: true, // استخدام تصميم Material 3 الجديد
    brightness: Brightness.light, // وضع الثيم: فاتح
    // لون خلفية كل الصفحات
    scaffoldBackgroundColor: Colors.white,

    //الي فوق
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white, // خلفية الشريط
      surfaceTintColor: Colors.white, // منع تغيير اللون مع Material 3
      elevation: 0, // بدون ظل
      iconTheme: IconThemeData(color: Colors.black), // لون الأيقونات
      titleTextStyle: TextStyle(
        color: Colors.black, // لون النص في العنوان
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      // لون الساعة والبطارية على status bar (غامق)(فزلكة)
    ),

    // الي تحت
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white, // خلفية البار
      selectedItemColor: Colors.black, // العنصر المختار أسود
      unselectedItemColor: Colors.grey, // العناصر الغير مختارة رمادي
    ),

    // لون الأيقونات بشكل عام
    iconTheme: const IconThemeData(color: Colors.black),

    // ألوان النصوص
    textTheme: const TextTheme().apply(
      bodyColor: Colors.black, // نصوص المحتوى
      displayColor: Colors.black, // نصوص العناوين
    ),
  );
  //الثيم الغامق
  static final darkTheme = ThemeData(
    useMaterial3: true, // استخدام تصميم Material 3
    brightness: Brightness.dark, // وضع الثيم: غامق

    scaffoldBackgroundColor: Colors.black, // خلفية الصفحات سوداء
    // الي فوق
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black, // خلفية الشريط
      surfaceTintColor: Colors.black, // منع تغيير اللون مع Material 3
      elevation: 0, // بدون ظل
      iconTheme: IconThemeData(color: Colors.white), // الأيقونات بيضاء
      titleTextStyle: TextStyle(
        color: Colors.white, // النص في العنوان أبيض
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
      // لون الساعة والبطارية أبيض(الفزلكة نفسا)
    ),

    // الي تحت
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black, // خلفية البار
      selectedItemColor: Colors.white, // العنصر المختار أبيض
      unselectedItemColor: Colors.grey, // العناصر الغير مختارة رمادي
    ),

    // لون الأيقونات الي ما اشتغلت
    iconTheme: const IconThemeData(color: Colors.white),

    // ألوان Material 3
    colorScheme: const ColorScheme.dark(
      surface: Colors.black, // خلفية الكروت والحوارات
      onSurface: Colors.white, // النص فوق الكروت
      primary: Colors.white, // اللون الأساسي للتطبيق (مثل الأزرار)
      onPrimary: Colors.black, // لون النص فوق اللون الأساسي
    ),

    // ألوان النصوص
    textTheme: const TextTheme().apply(
      bodyColor: Colors.white, // نصوص المحتوى
      displayColor: Colors.white, // نصوص العناوين
    ),
  );
}