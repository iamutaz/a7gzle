import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: ButtonStyle(),
          onPressed: () {
            context.pushNamed(RoutesConstant.login);
          },
          child: Text("get started"),
        ),
      ),
    );
  }
}
