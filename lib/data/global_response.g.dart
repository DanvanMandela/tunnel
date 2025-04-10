// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalResponse _$GlobalResponseFromJson(Map<String, dynamic> json) =>
    GlobalResponse(
      message: json['message'] as String?,
      data: json['data'],
      status: $enumDecode(_$ResponseStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$GlobalResponseToJson(GlobalResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'status': _$ResponseStatusEnumMap[instance.status]!,
    };

const _$ResponseStatusEnumMap = {
  ResponseStatus.ok: 'OK',
  ResponseStatus.badRequest: 'BAD_REQUEST',
};
