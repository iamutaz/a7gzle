import 'package:json_annotation/json_annotation.dart';

part 'rate_response_body.g.dart';

@JsonSerializable()
class RateResponseBody {
  String? message;

  RateResponseBody({this.message});

  factory RateResponseBody.fromJson(Map<String, dynamic> json) =>
      _$RateResponseBodyFromJson(json);
}
