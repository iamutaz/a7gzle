// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  firstname: json['firstname'] as String,
  lastname: json['lastname'] as String,
  password: json['password'] as String,
  profileimage: json['profileimage'] as String,
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'firstname': instance.firstname,
  'lastname': instance.lastname,
  'profileimage': instance.profileimage,
  'password': instance.password,
};
