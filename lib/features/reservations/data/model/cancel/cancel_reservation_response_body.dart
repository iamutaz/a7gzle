import 'package:json_annotation/json_annotation.dart';

part 'cancel_reservation_response_body.g.dart';

@JsonSerializable()
class CancelReservationResponseBody {
  String? message;
  @JsonKey(name: "cancelled_at")
  String? cancelledat;

  CancelReservationResponseBody({this.cancelledat, this.message});

  factory CancelReservationResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CancelReservationResponseBodyFromJson(json);
}
