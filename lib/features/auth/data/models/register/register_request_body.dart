import 'package:json_annotation/json_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String email;
  final String token;
  final String password;

  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  RegisterRequestBody({
    required this.email,
    required this.token,
    required this.password,
    required this.passwordConfirmation,
  });

  factory RegisterRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
