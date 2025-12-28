// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  firstname: json['firstname'] as String,
  lastname: json['lastname'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'firstname': instance.firstname,
  'lastname': instance.lastname,
  'type': instance.type,
};
