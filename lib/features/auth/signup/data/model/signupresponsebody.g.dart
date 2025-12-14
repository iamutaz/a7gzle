// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signupresponsebody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Signupresponsebody _$SignupresponsebodyFromJson(Map<String, dynamic> json) =>
    Signupresponsebody(
      json['first_name'] as String,
      json['last_name'] as String,
      json['id_photo_back'] as String,
      json['birthdate'] as String,
      json['id_photo_front'] as String,
      json['number'] as String,
      json['profile_photo'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$SignupresponsebodyToJson(Signupresponsebody instance) =>
    <String, dynamic>{
      'first_name': instance.firstname,
      'last_name': instance.lastname,
      'number': instance.number,
      'birthdate': instance.birthdate,
      'type': instance.type,
      'profile_photo': instance.profileimage,
      'id_photo_front': instance.frontid,
      'id_photo_back': instance.backid,
    };
