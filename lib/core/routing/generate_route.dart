import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/features/Home/home_manager.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:a7gzle/features/Home/search/search_screen.dart';
import 'package:a7gzle/features/auth/info/info.dart';
import 'package:a7gzle/features/auth/login/data/logic/cubit/login_cubit.dart';
import 'package:a7gzle/features/auth/login/login.dart';
import 'package:a7gzle/features/auth/signup/data/cubit/sign_up_cubit.dart';
import 'package:a7gzle/features/auth/signup/sign_up.dart';
import 'package:a7gzle/features/details/details_screen.dart';
import 'package:a7gzle/features/onboarding/onboarding.dart';
import 'package:a7gzle/features/reservations/data/logic/get_reservation_cubit/get_all_user_reservations_cubit.dart';
import 'package:a7gzle/features/reservations/user_reservations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:a7gzle/core/DI/get_it.dart';

class GenerateRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesConstant.signup:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return BlocProvider(
              create: (context) => getIt<SignUpCubit>(),
              child: SignUp(),
            );
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
            final cubit = settings.arguments as SignUpCubit;

            return BlocProvider.value(value: cubit, child: Info());
          },
        );
      case RoutesConstant.home:
        final usertype = settings.arguments as String;
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return HomeManager(usertype: usertype);
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
        final apartment = settings.arguments as Apartment;

        return MaterialPageRoute(
          builder: (BuildContext context) {
            // return Details();
            return Details(apartment: apartment);
          },
        );
      case RoutesConstant.search:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return SearchScreen();
          },
        );
      case RoutesConstant.userreservations:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return BlocProvider(
              create: (context) => getIt<GetAllUserReservationsCubit>(),
              child: UserReservations(),
            );
          },
        );
      // case RoutesConstant.createapartment:
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) {
      //       return BlocProvider(
      //         create: (context) => getIt<CreateApartmentCubit>(),
      //         child: OwnerScreen(),
      //       );
      //     },
      //   );
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return Scaffold(body: Center(child: Text("no screen")));
          },
        );
    }
  }
}
