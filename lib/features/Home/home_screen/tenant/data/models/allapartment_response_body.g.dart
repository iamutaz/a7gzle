// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allapartment_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllapartmentResponseBody _$AllapartmentResponseBodyFromJson(
  Map<String, dynamic> json,
) => AllapartmentResponseBody(
  apartmentlist: (json['data'] as List<dynamic>)
      .map((e) => Apartment.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AllapartmentResponseBodyToJson(
  AllapartmentResponseBody instance,
) => <String, dynamic>{'data': instance.apartmentlist, 'meta': instance.meta};
