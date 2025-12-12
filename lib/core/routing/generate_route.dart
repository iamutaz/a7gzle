import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/features/Home/home.dart';
import 'package:a7gzle/features/auth/info/info.dart';
import 'package:a7gzle/features/auth/login/data/logic/cubit/login_cubit.dart';
import 'package:a7gzle/features/auth/login/login.dart';
import 'package:a7gzle/features/auth/signup/sign_up.dart';
import 'package:a7gzle/features/details/details_screen.dart';
import 'package:a7gzle/features/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:a7gzle/core/DI/get_it.dart';

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
      case RoutesConstant.home:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Home();
          },
        );
      case RoutesConstant.login:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return BlocProvider(
              create: (context) => getIt<LoginCubitCubit>(),
              child: Login(),
            );
          },
        );
      case RoutesConstant.details:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Details();
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
