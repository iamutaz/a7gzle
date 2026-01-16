// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_notification_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservationNotificationRequestBody _$ReservationNotificationRequestBodyFromJson(
  Map<String, dynamic> json,
) => ReservationNotificationRequestBody(
  action: json['action'] as String,
  reservationid: (json['reservation_id'] as num).toInt(),
);

Map<String, dynamic> _$ReservationNotificationRequestBodyToJson(
  ReservationNotificationRequestBody instance,
) => <String, dynamic>{
  'reservation_id': instance.reservationid,
  'action': instance.action,
};
