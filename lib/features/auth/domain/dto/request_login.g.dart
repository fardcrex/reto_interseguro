// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestLogin _$$_RequestLoginFromJson(Map<String, dynamic> json) =>
    _$_RequestLogin(
      account: json['user'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_RequestLoginToJson(_$_RequestLogin instance) =>
    <String, dynamic>{
      'user': instance.account,
      'password': instance.password,
    };
