class AppRegex {
  static bool isNumberValid(String number) {
    return RegExp(r'^(?:\+963|00963|0)?9\d{8}$').hasMatch(number);
  }

  static bool hasMinLength(String password) {
    return RegExp(r'^(?=.{8,})').hasMatch(password);
  }
}
