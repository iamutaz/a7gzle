import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routename, {Object? aurgment}) {
    return Navigator.of(this).pushNamed(routename, arguments: aurgment);
  }

  Future<dynamic> pushReplacementNamed(String routename, {Object? aurgment}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routename, arguments: aurgment);
  }

  Future<dynamic> pushAndRemoveUntil(
    String routename, {
    Object? aurgment,
    required RoutePredicate routeprediacte,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil(routename, routeprediacte, arguments: aurgment);
  }

  void pop() => Navigator.of(this).pop();
}
