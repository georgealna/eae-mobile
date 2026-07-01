import 'package:json_annotation/json_annotation.dart';

part 'reset_password_request_body.g.dart';

@JsonSerializable()
class ResetPasswordRequestBody {
  final String email;
  final String token;
  final String password;

  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  ResetPasswordRequestBody({
    required this.email,
    required this.token,
    required this.password,
    required this.passwordConfirmation,
  });

  factory ResetPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordRequestBodyToJson(this);
}
