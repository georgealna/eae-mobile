part of 'users_management_cubit.dart';

@freezed
class UsersManagementState with _$UsersManagementState {
  const factory UsersManagementState.initial() = _Initial;
  const factory UsersManagementState.loading() = _Loading;
  const factory UsersManagementState.usersLoaded(
    UsersManagementResponse response,
  ) = _UsersLoaded;
  const factory UsersManagementState.userLoaded(UserDetailsResponse response) =
      _UserLoaded;
  const factory UsersManagementState.createSuccess(
    CreateUserResponse response,
  ) = _CreateSuccess;
  const factory UsersManagementState.inviteSuccess(
    InviteUserResponse response,
  ) = _InviteSuccess;
  const factory UsersManagementState.actionSuccess(
    UserActionResponse response,
  ) = _ActionSuccess;
  const factory UsersManagementState.error({required String error}) = _Error;
}
