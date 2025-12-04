import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/features/auth/info/info.dart';
import 'package:a7gzle/features/auth/login/login.dart';
import 'package:a7gzle/features/auth/signup/sign_up.dart';
import 'package:a7gzle/features/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class GenerateRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesConstant.signup:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return SignUp();
          },
        );
      case RoutesConstant.onboarding:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Onboarding();
          },
        );
      case RoutesConstant.info:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Info();
          },
        );
      case RoutesConstant.login:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Login();
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
