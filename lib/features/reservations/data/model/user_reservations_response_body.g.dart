// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_reservations_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserReservationsResponseBody _$UserReservationsResponseBodyFromJson(
  Map<String, dynamic> json,
) => UserReservationsResponseBody(
  pending: (json['pending'] as List<dynamic>)
      .map((e) => ReservationBody.fromJson(e as Map<String, dynamic>))
      .toList(),
  cancelled: (json['cancelled'] as List<dynamic>)
      .map((e) => ReservationBody.fromJson(e as Map<String, dynamic>))
      .toList(),
  confirmed: (json['confirmed'] as List<dynamic>)
      .map((e) => ReservationBody.fromJson(e as Map<String, dynamic>))
      .toList(),
  rejected: (json['rejected'] as List<dynamic>)
      .map((e) => ReservationBody.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UserReservationsResponseBodyToJson(
  UserReservationsResponseBody instance,
) => <String, dynamic>{
  'pending': instance.pending,
  'confirmed': instance.confirmed,
  'cancelled': instance.cancelled,
  'rejected': instance.rejected,
};

ReservationBody _$ReservationBodyFromJson(Map<String, dynamic> json) =>
    ReservationBody(
      apartmentDetails: ApartmentDetails.fromJson(
        json['apartment_details'] as Map<String, dynamic>,
      ),
      apartmentid: (json['apartment_id'] as num).toInt(),
      enddate: json['end_date'] as String,
      reservationid: (json['id'] as num).toInt(),
      startdate: json['start_date'] as String,
      status: json['status'] as String,
      userid: (json['user_id'] as num).toInt(),
    );

Map<String, dynamic> _$ReservationBodyToJson(ReservationBody instance) =>
    <String, dynamic>{
      'id': instance.reservationid,
      'start_date': instance.startdate,
      'end_date': instance.enddate,
      'user_id': instance.userid,
      'apartment_id': instance.apartmentid,
      'status': instance.status,
      'apartment_details': instance.apartmentDetails,
    };

ApartmentDetails _$ApartmentDetailsFromJson(Map<String, dynamic> json) =>
    ApartmentDetails(
      city: json['city'] as String,
      firstiamgepath: json['first_image'] as String,
      price: json['price'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$ApartmentDetailsToJson(ApartmentDetails instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'city': instance.city,
      'first_image': instance.firstiamgepath,
    };
