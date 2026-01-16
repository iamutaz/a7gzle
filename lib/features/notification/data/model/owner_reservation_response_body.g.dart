// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_reservation_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerReservationResponseBody _$OwnerReservationResponseBodyFromJson(
  Map<String, dynamic> json,
) => OwnerReservationResponseBody(
  count: (json['count'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => OwnerReservationBody.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OwnerReservationResponseBodyToJson(
  OwnerReservationResponseBody instance,
) => <String, dynamic>{'count': instance.count, 'data': instance.data};

OwnerReservationBody _$OwnerReservationBodyFromJson(
  Map<String, dynamic> json,
) => OwnerReservationBody(
  creatdeat: json['created_at'] as String,
  apartmentid: (json['apartment_id'] as num).toInt(),
  apartmentname: json['apartment_title'] as String,
  enddate: json['end_date'] as String,
  renterid: (json['renter_id'] as num).toInt(),
  rentername: json['renter_name'] as String,
  renterphoto: json['renter_profile_photo'] as String,
  reservationid: (json['reservation_id'] as num).toInt(),
  startdate: json['start_date'] as String,
  status: json['status'] as String,
  totalprice: (json['total_price'] as num).toDouble(),
);

Map<String, dynamic> _$OwnerReservationBodyToJson(
  OwnerReservationBody instance,
) => <String, dynamic>{
  'reservation_id': instance.reservationid,
  'renter_id': instance.renterid,
  'renter_name': instance.rentername,
  'renter_profile_photo': instance.renterphoto,
  'apartment_id': instance.apartmentid,
  'apartment_title': instance.apartmentname,
  'status': instance.status,
  'start_date': instance.startdate,
  'end_date': instance.enddate,
  'total_price': instance.totalprice,
  'created_at': instance.creatdeat,
};
