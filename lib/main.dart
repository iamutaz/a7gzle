import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/routing/generate_route.dart';
import 'package:a7gzle/manager.dart';
import 'package:a7gzle/core/theming/dark_mode/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // هي بتجيب اخر ثيم انحفظ عملو اليوزر
  await ThemeService.instance.init();

  await ScreenUtil.ensureScreenSize();
  setupinjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Manager(generateRoute: GenerateRoute());
  }
}
