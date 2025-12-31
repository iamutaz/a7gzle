// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterRequestBody _$FilterRequestBodyFromJson(Map<String, dynamic> json) =>
    FilterRequestBody(
      city: json['city'] as String?,
      maxarea: (json['max_area'] as num?)?.toInt(),
      maxbathrooms: (json['max_bathrooms'] as num?)?.toInt(),
      maxprice: json['max_price'] as String?,
      maxrooms: (json['max_rooms'] as num?)?.toInt(),
      minarea: (json['min_area'] as num?)?.toInt(),
      minbathrooms: (json['min_bathrooms'] as num?)?.toInt(),
      minprice: json['min_price'] as String?,
      minrooms: (json['min_rooms'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FilterRequestBodyToJson(FilterRequestBody instance) =>
    <String, dynamic>{
      'min_rooms': instance.minrooms,
      'max_rooms': instance.maxrooms,
      'min_bathrooms': instance.minbathrooms,
      'max_bathrooms': instance.maxbathrooms,
      'max_area': instance.maxarea,
      'min_area': instance.minarea,
      'min_price': instance.minprice,
      'max_price': instance.maxprice,
      'city': instance.city,
    };
