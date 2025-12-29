// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingRequestBody _$BookingRequestBodyFromJson(Map<String, dynamic> json) =>
    BookingRequestBody(
      enddate: json['end_date'] as String,
      roomid: (json['apartment_id'] as num).toInt(),
      startdate: json['start_date'] as String,
    );

Map<String, dynamic> _$BookingRequestBodyToJson(BookingRequestBody instance) =>
    <String, dynamic>{
      'start_date': instance.startdate,
      'end_date': instance.enddate,
      'apartment_id': instance.roomid,
    };
