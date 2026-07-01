import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_response.g.dart';

@JsonSerializable()
class ForgotPasswordResponse {
  final ForgotPasswordData data;

  ForgotPasswordResponse({required this.data});

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordResponseToJson(this);
}

@JsonSerializable()
class ForgotPasswordData {
  final String message;

  ForgotPasswordData({required this.message});

  factory ForgotPasswordData.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordDataFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordDataToJson(this);
}
