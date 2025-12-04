import 'package:json_annotation/json_annotation.dart';

part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  String message;
  @JsonKey(name: "Token")
  String token;
  @JsonKey(name: "User")
  User user;

  LoginResponseBody(this.message, this.token, this.user);
  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseBodyToJson(this);
}

@JsonSerializable()
class User {
  int id;
  @JsonKey(name: "first_name")
  String firstname;
  @JsonKey(name: "last_name")
  String lastname;
  String birthdate;
  String number;
  String status;
  String type;
  User(
    this.id,
    this.birthdate,
    this.firstname,
    this.lastname,
    this.number,
    this.status,
    this.type,
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
