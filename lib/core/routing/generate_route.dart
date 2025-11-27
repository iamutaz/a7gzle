import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/features/login/screens/login/login.dart';
import 'package:a7gzle/features/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class GenerateRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesConstant.login:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Login();
          },
        );
      case RoutesConstant.onboarding:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Onboarding();
          },
        );
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(body: Center(child: Text("no screen")));
          },
        );
    }
  }
}
