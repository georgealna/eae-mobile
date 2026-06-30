import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  final RegisterData data;

  RegisterResponse({required this.data});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}

@JsonSerializable()
class RegisterData {
  @JsonKey(name: 'user_id')
  final String userId;

  @JsonKey(name: 'tenant_id')
  final String tenantId;

  final String status;
  final String token;

  RegisterData({
    required this.userId,
    required this.tenantId,
    required this.status,
    required this.token,
  });

  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterDataToJson(this);
}
