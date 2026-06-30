// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      data: RegisterData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{'data': instance.data};

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) => RegisterData(
  userId: json['user_id'] as String,
  tenantId: json['tenant_id'] as String,
  status: json['status'] as String,
  token: json['token'] as String,
);

Map<String, dynamic> _$RegisterDataToJson(RegisterData instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'tenant_id': instance.tenantId,
      'status': instance.status,
      'token': instance.token,
    };
