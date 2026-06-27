// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      data: LoginData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{'data': instance.data};

LoginData _$LoginDataFromJson(Map<String, dynamic> json) => LoginData(
  status: json['status'] as String,
  userId: json['user_id'] as String,
  sessionId: json['session_id'] as String,
  mfaRequired: json['mfa_required'] as bool,
  authenticatedAt: json['authenticated_at'] as String,
  token: json['token'] as String,
);

Map<String, dynamic> _$LoginDataToJson(LoginData instance) => <String, dynamic>{
  'status': instance.status,
  'user_id': instance.userId,
  'session_id': instance.sessionId,
  'mfa_required': instance.mfaRequired,
  'authenticated_at': instance.authenticatedAt,
  'token': instance.token,
};
