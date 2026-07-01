part of 'forensics_checkpoint_cubit.dart';

@freezed
class ForensicsCheckpointState with _$ForensicsCheckpointState {
  const factory ForensicsCheckpointState.loading() = _Loading;

  const factory ForensicsCheckpointState.ready({
    required ForensicsCheckpointViewData viewData,
  }) = _Ready;
}
