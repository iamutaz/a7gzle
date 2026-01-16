import 'package:json_annotation/json_annotation.dart';

part 'reservation_notification_request_body.g.dart';

@JsonSerializable()
class ReservationNotificationRequestBody {
  @JsonKey(name: "reservation_id")
  int reservationid;
  String action;

  ReservationNotificationRequestBody({
    required this.action,
    required this.reservationid,
  });

  Map<String, dynamic> toJson() =>
      _$ReservationNotificationRequestBodyToJson(this);
}
