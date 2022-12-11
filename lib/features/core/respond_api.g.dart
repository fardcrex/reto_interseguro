// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'respond_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RespondApi _$$_RespondApiFromJson(Map<String, dynamic> json) =>
    _$_RespondApi(
      code: json['code'] as int,
      message: json['message'] as String,
      body: json['body'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_RespondApiToJson(_$_RespondApi instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'body': instance.body,
    };
