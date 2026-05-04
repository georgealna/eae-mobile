part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.progress({
    required double progress,
    required String status,
  }) = _Progress;
  const factory SplashState.completed({
    @Default('Encrypted connection') String status,
  }) = _Completed;
}
