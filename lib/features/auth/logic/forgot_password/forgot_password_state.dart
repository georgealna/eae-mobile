part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial() = _Initial;
  const factory ForgotPasswordState.loading() = Loading;
  const factory ForgotPasswordState.success(
    ForgotPasswordResponse forgotPasswordResponse,
  ) = Success;
  const factory ForgotPasswordState.error({required String error}) = Error;
}
