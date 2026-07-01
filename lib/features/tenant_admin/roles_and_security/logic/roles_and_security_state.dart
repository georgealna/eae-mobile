part of 'roles_and_security_cubit.dart';

@freezed
class RolesAndSecurityState with _$RolesAndSecurityState {
  const factory RolesAndSecurityState.initial() = _Initial;
  const factory RolesAndSecurityState.loading() = _Loading;
  const factory RolesAndSecurityState.loaded({
    required RolesResponse rolesResponse,
    required SecurityPolicyResponse securityPolicyResponse,
  }) = _Loaded;
  const factory RolesAndSecurityState.createRoleSuccess(
    CreateRoleResponse response,
  ) = _CreateRoleSuccess;
  const factory RolesAndSecurityState.actionSuccess(
    RoleActionResponse response,
  ) = _ActionSuccess;
  const factory RolesAndSecurityState.securityPolicyUpdateSuccess(
    SecurityPolicyResponse response,
  ) = _SecurityPolicyUpdateSuccess;
  const factory RolesAndSecurityState.error({required String error}) = _Error;
}
