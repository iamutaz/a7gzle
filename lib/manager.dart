import 'package:a7gzle/core/routing/generate_route.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/dark_mode/theme_service.dart';
import 'package:a7gzle/core/theming/dark_mode/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


class Manager extends StatelessWidget {
  final GenerateRoute generateRoute;
  const Manager({super.key, required this.generateRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(430, 932),
      builder: (context, child) {
        // التطبيق بغير الثيم وبدي اضمن ان الواجهة بتعيد البناء صح لما الثيم يتغير
        return GetMaterialApp(
          // غيرت لهي لاني بدي استعمل  getx
          onGenerateRoute: generateRoute.generateRoute,
          initialRoute: RoutesConstant.onboarding,
          debugShowCheckedModeBanner: false,
          //  الثيم الفاتح
          theme: AppThemes.lightTheme,
          //  الثيم الداكن
          darkTheme: AppThemes.darkTheme,
          //  تحديد الثيم الحالي (فاتح / داكن / نظام)
          themeMode: ThemeService.instance.themeMode,
        );
      },
    );
  }
}
