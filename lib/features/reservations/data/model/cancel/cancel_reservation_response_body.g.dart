// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_reservation_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelReservationResponseBody _$CancelReservationResponseBodyFromJson(
  Map<String, dynamic> json,
) => CancelReservationResponseBody(
  cancelledat: json['cancelled_at'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$CancelReservationResponseBodyToJson(
  CancelReservationResponseBody instance,
) => <String, dynamic>{
  'message': instance.message,
  'cancelled_at': instance.cancelledat,
};
