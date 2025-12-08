import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/routing/generate_route.dart';
import 'package:a7gzle/manager.dart';
import 'package:flutter/material.dart';

void main() {
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
