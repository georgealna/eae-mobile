import 'package:dio/dio.dart';

import '../../../../core/constants/shared_pref_keys.dart';
import '../../../../core/helpers/app_shared_preferences.dart';
import '../../../../core/networking/api_services_impl.dart';
import '../../../../core/networking/app_link_url.dart';
import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../models/forgot_password/forgot_password_request_body.dart';
import '../models/forgot_password/forgot_password_response.dart';
import '../models/login/login_request_body.dart';
import '../models/login/login_response.dart';
import '../models/register/register_request_body.dart';
import '../models/register/register_response.dart';
import '../models/reset_password/reset_password_request_body.dart';
import '../models/reset_password/reset_password_response.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponse> login(LoginRequestBody loginRequestBody);
  Future<RegisterResponse> register(RegisterRequestBody registerRequestBody);
  Future<ForgotPasswordResponse> forgotPassword(
    ForgotPasswordRequestBody forgotPasswordRequestBody,
  );
  Future<ResetPasswordResponse> resetPassword(
    ResetPasswordRequestBody resetPasswordRequestBody,
  );
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiServicesImpl apiServicesImpl;

  AuthRemoteDataSourceImpl({required this.apiServicesImpl});

  @override
  Future<LoginResponse> login(LoginRequestBody loginRequestBody) async {
    try {
      final request = await apiServicesImpl.post(
        AppLinkUrl.login,
        body: {
          'email': loginRequestBody.email,
          'password': loginRequestBody.password,
        },
      );
      final response = LoginResponse.fromJson(request);
      final sharedPref = AppSharedPreferences();
      await sharedPref.setString(AppSharedPrefKeys.token, response.data.token);

      return response;
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }

  @override
  Future<RegisterResponse> register(
    RegisterRequestBody registerRequestBody,
  ) async {
    try {
      final request = await apiServicesImpl.post(
        AppLinkUrl.register,
        body: registerRequestBody.toJson(),
      );
      final response = RegisterResponse.fromJson(request);
      final sharedPref = AppSharedPreferences();
      await sharedPref.setString(AppSharedPrefKeys.token, response.data.token);

      return response;
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }

  @override
  Future<ForgotPasswordResponse> forgotPassword(
    ForgotPasswordRequestBody forgotPasswordRequestBody,
  ) async {
    try {
      final request = await apiServicesImpl.post(
        AppLinkUrl.forgotPassword,
        body: forgotPasswordRequestBody.toJson(),
      );

      return ForgotPasswordResponse.fromJson(request);
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }

  @override
  Future<ResetPasswordResponse> resetPassword(
    ResetPasswordRequestBody resetPasswordRequestBody,
  ) async {
    try {
      final request = await apiServicesImpl.post(
        AppLinkUrl.resetPassword,
        body: resetPasswordRequestBody.toJson(),
      );

      return ResetPasswordResponse.fromJson(request);
    } on DioException catch (e) {
      throw NetworkExceptions.getException(e);
    } catch (e) {
      throw NetworkExceptions.getException(e);
    }
  }
}
