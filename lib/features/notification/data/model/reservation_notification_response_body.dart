import 'package:json_annotation/json_annotation.dart';

part 'reservation_notification_response_body.g.dart';

@JsonSerializable()
class ReservationNotificationResponseBody {
  String message;
  ReservationNotificationResponseBody({required this.message});

  factory ReservationNotificationResponseBody.fromJson(
    Map<String, dynamic> json,
  ) => _$ReservationNotificationResponseBodyFromJson(json);
}
