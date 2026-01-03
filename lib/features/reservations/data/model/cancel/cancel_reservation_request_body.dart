import 'package:json_annotation/json_annotation.dart';

part 'cancel_reservation_request_body.g.dart';

@JsonSerializable()
class CancelReservationRequestBody {
  @JsonKey(name: "reservation_id")
  int reservationid;

  CancelReservationRequestBody({required this.reservationid});

  Map<String, dynamic> toJson() => _$CancelReservationRequestBodyToJson(this);
}
