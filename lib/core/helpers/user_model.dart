import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  late String firstname;
  late String lastname;
  late String profileimage;
  late String password;

  UserModel({
    required this.firstname,
    required this.lastname,
    required this.password,
    required this.profileimage,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
