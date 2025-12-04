// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseBody _$LoginResponseBodyFromJson(Map<String, dynamic> json) =>
    LoginResponseBody(
      json['message'] as String,
      json['Token'] as String,
      User.fromJson(json['User'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseBodyToJson(LoginResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'Token': instance.token,
      'User': instance.user,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
  (json['id'] as num).toInt(),
  json['birthdate'] as String,
  json['first_name'] as String,
  json['last_name'] as String,
  json['number'] as String,
  json['status'] as String,
  json['type'] as String,
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstname,
  'last_name': instance.lastname,
  'birthdate': instance.birthdate,
  'number': instance.number,
  'status': instance.status,
  'type': instance.type,
};
