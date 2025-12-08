import 'package:a7gzle/core/routing/generate_route.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Manager extends StatelessWidget {
  final GenerateRoute generateRoute;
  const Manager({super.key, required this.generateRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(430, 932),
      child: MaterialApp(
        onGenerateRoute: generateRoute.generateRoute,
        initialRoute: RoutesConstant.onboarding,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
