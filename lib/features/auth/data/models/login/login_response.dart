import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final LoginData data;

  LoginResponse({required this.data});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class LoginData {
  final String status;

  @JsonKey(name: 'user_id')
  final String userId;

  @JsonKey(name: 'session_id')
  final String sessionId;

  @JsonKey(name: 'mfa_required')
  final bool mfaRequired;

  @JsonKey(name: 'authenticated_at')
  final String authenticatedAt;

  final String token;

  LoginData({
    required this.status,
    required this.userId,
    required this.sessionId,
    required this.mfaRequired,
    required this.authenticatedAt,
    required this.token,
  });

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataToJson(this);
}
