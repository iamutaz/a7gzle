import 'package:json_annotation/json_annotation.dart';

part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  String number;
  String password;
  @JsonKey(name: "fcm_token")
  String? fcmtoken;

  LoginRequestBody({
    required this.number,
    required this.password,
    this.fcmtoken,
  });

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);

  factory LoginRequestBody.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestBodyFromJson(json);
}
