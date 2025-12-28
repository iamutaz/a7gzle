import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/helpers/constant.dart';
import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/routing/generate_route.dart';
import 'package:a7gzle/manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  // await checkIfLoggedInUser();
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

// checkIfLoggedInUser() async {
//   String? userToken = await SharedPrefHelper.getSecuredString(
//     SharedPrefKeys.userToken,
//   );
//   if (!userToken.isNullOrEmpty()) {
//     isLoggedInUser = true;
//   } else {
//     isLoggedInUser = false;
//   }
// }
