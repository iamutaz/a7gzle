import 'package:dio/dio.dart';

class SignupRequestBody {
  late String firstname;
  late String lastname;
  late String number;
  late String password;
  late String passwordconfirmation;
  late String type;
  late String birthdate;
  late MultipartFile frontid;
  late MultipartFile backid;
  late MultipartFile profileimage;

  SignupRequestBody({
    required this.number,
    required this.password,
    required this.passwordconfirmation,
    required this.firstname,
    required this.lastname,
    required this.birthdate,
    required this.type,
    required this.backid,
    required this.frontid,
    required this.profileimage,
  });
}
