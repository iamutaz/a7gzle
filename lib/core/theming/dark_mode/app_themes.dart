import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppThemes {
  static const Color lightBg = Color(0xFFF6F5F5); // خلفية اللايت
  static const Color darkBg = Color(0xFF1C1C1E);  // خلفية الدارك 
  static final lightTheme = _buildTheme(
    brightness: Brightness.light,
    bg: lightBg,
    contentColor: Colors.black, // النصوص والأيقونات باللايت
    overlay: SystemUiOverlayStyle.dark,
  );

  static final darkTheme = _buildTheme(
    brightness: Brightness.dark,
    bg: darkBg,
    contentColor: const Color(0xFFF1F1F3), // النصوص والأيقونات بالدارك
    overlay: SystemUiOverlayStyle.light,
  );

  static ThemeData _buildTheme({
    required Brightness brightness,
    required Color bg,
    required Color contentColor,
    required SystemUiOverlayStyle overlay,
  }) {
    bool isDark = brightness == Brightness.dark;

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      scaffoldBackgroundColor: bg,

      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF247CFF),
        brightness: brightness,
        // لون الأسطح (الكروت): بالدارك نستخدم (اليسار بالصورة)
        surface: isDark ? const Color(0xFF28272C) : Colors.white,
        onSurface: contentColor, // هذا اللون الذي يسحبه الـ AppIcon للأيقونات
      ),

      iconTheme: IconThemeData(color: contentColor, size: 24),

      appBarTheme: AppBarTheme(
        backgroundColor: bg,
        surfaceTintColor: bg,
        elevation: 0,
        iconTheme: IconThemeData(color: contentColor),
        titleTextStyle: TextStyle(color: contentColor, fontSize: 18, fontWeight: FontWeight.bold),
        systemOverlayStyle: overlay,
      ),


//ناف بار
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
     
        backgroundColor: bg, 
        selectedItemColor: const Color(0xFF247CFF), // الأزرق للزر المختار
        unselectedItemColor: Colors.grey,           // الرمادي للغير مختار
        type: BottomNavigationBarType.fixed,
        elevation: 0, 
      ),

      textTheme: const TextTheme().apply(
        bodyColor: contentColor,
        displayColor: contentColor,
      ),
    );
  }
}