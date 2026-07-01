import 'package:dio/dio.dart';

import '../../../../../core/constants/shared_pref_keys.dart';
import '../../../../../core/helpers/app_shared_preferences.dart';
import '../../../../../core/networking/api_services_impl.dart';
import '../../../../../core/networking/app_link_url.dart';
import '../../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../models/roles_and_security_request_body.dart';
import '../models/roles_and_security_response.dart';

abstract class RolesAndSecurityRemoteDataSource {
  Future<RolesResponse> rolesAndSecurity();

  Future<CreateRoleResponse> createRole(
    CreateRoleRequestBody createRoleRequestBody,
  );

  Future<RoleActionResponse> updateRole(
    String roleId,
    UpdateRoleRequestBody updateRoleRequestBody,
  );

  Future<RoleActionResponse> deleteRole(String roleId);

  Future<RoleActionResponse> assignRoleToUser(String roleId, String userId);

  Future<RoleActionResponse> removeRoleFromUser(String roleId, String userId);

  Future<SecurityPolicyResponse> securityPolicy();

  Future<SecurityPolicyResponse> updateSecurityPolicy(
    UpdateSecurityPolicyRequestBody updateSecurityPolicyRequestBody,
  );
}

class RolesAndSecurityRemoteDataSourceImpl
    implements RolesAndSecurityRemoteDataSource {
  final ApiServicesImpl apiServicesImpl;

  RolesAndSecurityRemoteDataSourceImpl({required this.apiServicesImpl});

  String? get _token {
    final sharedPref = AppSharedPreferences();
    return sharedPref.getString(AppSharedPrefKeys.token);
  }

  @override
  Future<RolesResponse> rolesAndSecurity() async {
    try {
      final request = await apiServicesImpl.get(
        AppLinkUrl.roles,
        token: _token,
      );

      return RolesResponse.fromJson(request);
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }

  @override
  Future<CreateRoleResponse> createRole(
    CreateRoleRequestBody createRoleRequestBody,
  ) async {
    try {
      final request = await apiServicesImpl.post(
        AppLinkUrl.roles,
        body: createRoleRequestBody.toJson(),
        token: _token,
      );

      return CreateRoleResponse.fromJson(request);
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }

  @override
  Future<RoleActionResponse> updateRole(
    String roleId,
    UpdateRoleRequestBody updateRoleRequestBody,
  ) async {
    try {
      final request = await apiServicesImpl.patch(
        AppLinkUrl.roleDetails(roleId),
        body: updateRoleRequestBody.toJson(),
        token: _token,
      );

      return RoleActionResponse.fromJson(request);
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }

  @override
  Future<RoleActionResponse> deleteRole(String roleId) async {
    try {
      final request = await apiServicesImpl.delete(
        AppLinkUrl.roleDetails(roleId),
        token: _token,
      );

      return RoleActionResponse.fromJson(request);
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }

  @override
  Future<RoleActionResponse> assignRoleToUser(
    String roleId,
    String userId,
  ) async {
    try {
      final request = await apiServicesImpl.post(
        AppLinkUrl.roleUser(roleId, userId),
        token: _token,
      );

      return RoleActionResponse.fromJson(request);
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }

  @override
  Future<RoleActionResponse> removeRoleFromUser(
    String roleId,
    String userId,
  ) async {
    try {
      final request = await apiServicesImpl.delete(
        AppLinkUrl.roleUser(roleId, userId),
        token: _token,
      );

      return RoleActionResponse.fromJson(request);
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }

  @override
  Future<SecurityPolicyResponse> securityPolicy() async {
    try {
      final request = await apiServicesImpl.get(
        AppLinkUrl.securityPolicies,
        token: _token,
      );

      return SecurityPolicyResponse.fromJson(request);
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }

  @override
  Future<SecurityPolicyResponse> updateSecurityPolicy(
    UpdateSecurityPolicyRequestBody updateSecurityPolicyRequestBody,
  ) async {
    try {
      final request = await apiServicesImpl.patch(
        AppLinkUrl.securityPolicies,
        body: updateSecurityPolicyRequestBody.toJson(),
        token: _token,
      );

      return SecurityPolicyResponse.fromJson(request);
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }
}
