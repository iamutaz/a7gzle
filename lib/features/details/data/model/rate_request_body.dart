import 'package:json_annotation/json_annotation.dart';

part 'rate_request_body.g.dart';

@JsonSerializable()
class RateRequestBody {
  double rate;
  @JsonKey(name: "apartment_id")
  int apartmentid;

  RateRequestBody({required this.apartmentid, required this.rate});

  Map<String, dynamic> toJson() => _$RateRequestBodyToJson(this);
}
