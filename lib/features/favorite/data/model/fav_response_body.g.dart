// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fav_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavResponseBody _$FavResponseBodyFromJson(Map<String, dynamic> json) =>
    FavResponseBody(
      (json['data'] as List<dynamic>)
          .map((e) => Apartment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FavResponseBodyToJson(FavResponseBody instance) =>
    <String, dynamic>{'data': instance.data};
