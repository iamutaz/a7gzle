import 'package:a7gzle/core/networking/dio_factory.dart';
import 'package:a7gzle/core/networking/web_services.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/cubit/create_apartment_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/repo/create_apartment_repo.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/repo/all_apartment_repo.dart';
import 'package:a7gzle/features/Home/settings/data/cubit/logout_cubit.dart';
import 'package:a7gzle/features/Home/settings/data/repo/logout_repo.dart';
import 'package:a7gzle/features/auth/login/data/logic/cubit/login_cubit.dart';
import 'package:a7gzle/features/auth/login/data/repo/login_repo.dart';
import 'package:a7gzle/features/auth/signup/data/cubit/sign_up_cubit.dart';
import 'package:a7gzle/features/auth/signup/data/repo/sign_up_repo.dart';
import 'package:a7gzle/features/details/data/cubit/booking_cubit.dart';
import 'package:a7gzle/features/details/data/repo/book_repo.dart';
import 'package:a7gzle/features/reservations/data/logic/cancel_reservation/cancel_reservation_cubit.dart';
import 'package:a7gzle/features/reservations/data/logic/get_reservation_cubit/get_all_user_reservations_cubit.dart';
import 'package:a7gzle/features/reservations/data/logic/update_reservation/update_reservation_cubit.dart';
import 'package:a7gzle/features/reservations/data/repo/reservations_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupinjection() async {
  //web services
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<WebServices>(() => WebServices(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubitCubit>(() => LoginCubitCubit(getIt()));

  //sign up
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

  //log out
  getIt.registerLazySingleton<LogoutRepo>(() => LogoutRepo(getIt()));
  getIt.registerFactory<LogoutCubit>(() => LogoutCubit(getIt()));
  //all apartment list
  getIt.registerLazySingleton<AllApartmentRepo>(
    () => AllApartmentRepo(getIt()),
  );
  getIt.registerFactory<AllapartmentCubit>(() => AllapartmentCubit(getIt()));

  //create apartment
  getIt.registerLazySingleton<CreateApartmentRepo>(
    () => CreateApartmentRepo(getIt()),
  );
  getIt.registerFactory<CreateApartmentCubit>(
    () => CreateApartmentCubit(getIt()),
  );

  //book apartment
  getIt.registerLazySingleton<BookRepo>(() => BookRepo(getIt()));
  getIt.registerFactory<BookingCubit>(() => BookingCubit(getIt()));

  //get reservation
  getIt.registerLazySingleton<ReservationsRepo>(
    () => ReservationsRepo(getIt()),
  );
  getIt.registerFactory<GetAllUserReservationsCubit>(
    () => GetAllUserReservationsCubit(getIt()),
  );

  //cancel reservation
  getIt.registerFactory<CancelReservationCubit>(
    () => CancelReservationCubit(getIt()),
  );

  //update reservation
  getIt.registerFactory<UpdateReservationCubit>(
    () => UpdateReservationCubit(getIt()),
  );
}
