// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_reservation_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateReservationRequestBody _$UpdateReservationRequestBodyFromJson(
  Map<String, dynamic> json,
) => UpdateReservationRequestBody(
  enddate: json['end_date'] as String,
  reservationid: (json['reservation_id'] as num).toInt(),
  startdate: json['start_date'] as String,
);

Map<String, dynamic> _$UpdateReservationRequestBodyToJson(
  UpdateReservationRequestBody instance,
) => <String, dynamic>{
  'reservation_id': instance.reservationid,
  'start_date': instance.startdate,
  'end_date': instance.enddate,
};
