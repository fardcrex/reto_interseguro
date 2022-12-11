// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCredentials _$$_UserCredentialsFromJson(Map<String, dynamic> json) =>
    _$_UserCredentials(
      name: json['name'] as String,
      isSaveSession: json['isSaveSession'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserCredentialsToJson(_$_UserCredentials instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isSaveSession': instance.isSaveSession,
    };
