import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/notification/notificatopn_service.dart';
import 'package:a7gzle/core/routing/generate_route.dart';
import 'package:a7gzle/firebase_messaging_handler.dart';
import 'package:a7gzle/manager.dart';
import 'package:a7gzle/core/theming/dark_mode/theme_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  await NotificationService.init();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // هي بتجيب اخر ثيم انحفظ عملو اليوزر
  await ThemeService.instance.init();

  await ScreenUtil.ensureScreenSize();
  setupinjection();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Manager(generateRoute: GenerateRoute());
  }
}
