// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RateRequestBody _$RateRequestBodyFromJson(Map<String, dynamic> json) =>
    RateRequestBody(
      apartmentid: (json['apartment_id'] as num).toInt(),
      rate: (json['rate'] as num).toDouble(),
    );

Map<String, dynamic> _$RateRequestBodyToJson(RateRequestBody instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'apartment_id': instance.apartmentid,
    };
