// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotPasswordResponse _$ForgotPasswordResponseFromJson(
  Map<String, dynamic> json,
) => ForgotPasswordResponse(
  data: ForgotPasswordData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ForgotPasswordResponseToJson(
  ForgotPasswordResponse instance,
) => <String, dynamic>{'data': instance.data};

ForgotPasswordData _$ForgotPasswordDataFromJson(Map<String, dynamic> json) =>
    ForgotPasswordData(message: json['message'] as String);

Map<String, dynamic> _$ForgotPasswordDataToJson(ForgotPasswordData instance) =>
    <String, dynamic>{'message': instance.message};
