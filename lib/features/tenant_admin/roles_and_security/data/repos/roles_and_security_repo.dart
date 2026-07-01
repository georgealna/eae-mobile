import '../../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../../../../core/networking/network_info.dart';
import '../datasources/roles_and_security_remote_data_source.dart';
import '../models/roles_and_security_request_body.dart';
import '../models/roles_and_security_response.dart';

class RolesAndSecurityRepo {
  final RolesAndSecurityRemoteDataSource rolesAndSecurityRemoteDataSource;
  final NetworkInfo networkInfo;

  RolesAndSecurityRepo({
    required this.rolesAndSecurityRemoteDataSource,
    required this.networkInfo,
  });

  Future<RolesResponse> rolesAndSecurity() async {
    if (await networkInfo.isConnected) {
      try {
        return await rolesAndSecurityRemoteDataSource.rolesAndSecurity();
      } catch (e) {
        throw NetworkExceptions.getException(e);
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }

  Future<CreateRoleResponse> createRole(
    CreateRoleRequestBody createRoleRequestBody,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        return await rolesAndSecurityRemoteDataSource.createRole(
          createRoleRequestBody,
        );
      } catch (e) {
        throw NetworkExceptions.getException(e);
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }

  Future<RoleActionResponse> updateRole(
    String roleId,
    UpdateRoleRequestBody updateRoleRequestBody,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        return await rolesAndSecurityRemoteDataSource.updateRole(
          roleId,
          updateRoleRequestBody,
        );
      } catch (e) {
        throw NetworkExceptions.getException(e);
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }

  Future<RoleActionResponse> deleteRole(String roleId) async {
    if (await networkInfo.isConnected) {
      try {
        return await rolesAndSecurityRemoteDataSource.deleteRole(roleId);
      } catch (e) {
        throw NetworkExceptions.getException(e);
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }

  Future<RoleActionResponse> assignRoleToUser(
    String roleId,
    String userId,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        return await rolesAndSecurityRemoteDataSource.assignRoleToUser(
          roleId,
          userId,
        );
      } catch (e) {
        throw NetworkExceptions.getException(e);
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }

  Future<RoleActionResponse> removeRoleFromUser(
    String roleId,
    String userId,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        return await rolesAndSecurityRemoteDataSource.removeRoleFromUser(
          roleId,
          userId,
        );
      } catch (e) {
        throw NetworkExceptions.getException(e);
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }

  Future<SecurityPolicyResponse> securityPolicy() async {
    if (await networkInfo.isConnected) {
      try {
        return await rolesAndSecurityRemoteDataSource.securityPolicy();
      } catch (e) {
        throw NetworkExceptions.getException(e);
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }

  Future<SecurityPolicyResponse> updateSecurityPolicy(
    UpdateSecurityPolicyRequestBody updateSecurityPolicyRequestBody,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        return await rolesAndSecurityRemoteDataSource.updateSecurityPolicy(
          updateSecurityPolicyRequestBody,
        );
      } catch (e) {
        throw NetworkExceptions.getException(e);
      }
    } else {
      throw const NetworkExceptions.noInternetConnection();
    }
  }
}
