// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_reservation_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelReservationRequestBody _$CancelReservationRequestBodyFromJson(
  Map<String, dynamic> json,
) => CancelReservationRequestBody(
  reservationid: (json['reservation_id'] as num).toInt(),
);

Map<String, dynamic> _$CancelReservationRequestBodyToJson(
  CancelReservationRequestBody instance,
) => <String, dynamic>{'reservation_id': instance.reservationid};
