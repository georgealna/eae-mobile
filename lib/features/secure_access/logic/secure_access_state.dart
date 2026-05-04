part of 'secure_access_cubit.dart';

@freezed
class SecureAccessState with _$SecureAccessState {
  const factory SecureAccessState.ready({
    @Default('') String email,
    String? selectedPartner,
    @Default(false) bool isSubmitting,
    String? errorMessage,
  }) = _Ready;

  const factory SecureAccessState.success() = _Success;
}
