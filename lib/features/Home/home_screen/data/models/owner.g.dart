// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
  firstname: json['first_name'] as String,
  id: (json['id'] as num).toInt(),
  lastname: json['last_name'] as String,
  profilephoto: json['profile_photo'] as String,
);

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstname,
  'last_name': instance.lastname,
  'profile_photo': instance.profilephoto,
};
