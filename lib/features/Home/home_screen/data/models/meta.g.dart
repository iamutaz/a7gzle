// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
  currentPage: (json['current_page'] as num).toInt(),
  lastPage: (json['last_page'] as num).toInt(),
);

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
  'current_page': instance.currentPage,
  'last_page': instance.lastPage,
};
