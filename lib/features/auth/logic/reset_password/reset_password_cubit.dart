import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../data/models/reset_password/reset_password_request_body.dart';
import '../../data/models/reset_password/reset_password_response.dart';
import '../../data/repos/auth_repo.dart';

part 'reset_password_state.dart';
part 'reset_password_cubit.freezed.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final AuthRepo authRepo;
  final String initialEmail;

  ResetPasswordCubit({required this.authRepo, required this.initialEmail})
    : super(const ResetPasswordState.initial()) {
    emailController = TextEditingController(text: initialEmail);
    tokenController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmationController = TextEditingController();
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late final TextEditingController emailController;
  late final TextEditingController tokenController;
  late final TextEditingController passwordController;
  late final TextEditingController passwordConfirmationController;

  void updateForm() {
    if (state is Loading) return;
    emit(const ResetPasswordState.initial());
  }

  Future<void> submit() async {
    final isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    final email = emailController.text.trim();
    final token = tokenController.text.trim();
    final password = passwordController.text.trim();
    final passwordConfirmation = passwordConfirmationController.text.trim();

    if (email.isEmpty || token.isEmpty || password.isEmpty) {
      emit(
        const ResetPasswordState.error(
          error: 'Please complete all reset fields',
        ),
      );
      return;
    }

    if (password != passwordConfirmation) {
      emit(
        const ResetPasswordState.error(
          error: 'Password confirmation does not match',
        ),
      );
      return;
    }

    emit(const ResetPasswordState.loading());

    try {
      final response = await authRepo.resetPassword(
        ResetPasswordRequestBody(
          email: email,
          token: token,
          password: password,
          passwordConfirmation: passwordConfirmation,
        ),
      );
      emit(ResetPasswordState.success(response));
    } on NetworkExceptions catch (e) {
      emit(
        ResetPasswordState.error(error: NetworkExceptions.getErrorMessage(e)),
      );
    } catch (e) {
      emit(
        const ResetPasswordState.error(
          error: 'Failed to reset password, please try again',
        ),
      );
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    tokenController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    return super.close();
  }
}
