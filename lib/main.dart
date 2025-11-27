import 'package:a7gzle/core/routing/generate_route.dart';
import 'package:a7gzle/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home(generateRoute: GenerateRoute());
  }
}
