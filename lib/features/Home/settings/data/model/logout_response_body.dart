import 'package:json_annotation/json_annotation.dart';

part 'logout_response_body.g.dart';

@JsonSerializable()
class LogoutResponseBody {
  String message;
  LogoutResponseBody({required this.message});

  Map<String, dynamic> toJson() => _$LogoutResponseBodyToJson(this);

  factory LogoutResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseBodyFromJson(json);
}
