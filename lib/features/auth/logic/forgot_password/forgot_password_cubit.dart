import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../data/models/forgot_password/forgot_password_request_body.dart';
import '../../data/models/forgot_password/forgot_password_response.dart';
import '../../data/repos/auth_repo.dart';

part 'forgot_password_state.dart';
part 'forgot_password_cubit.freezed.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final AuthRepo authRepo;

  ForgotPasswordCubit({required this.authRepo})
    : super(const ForgotPasswordState.initial()) {
    emailController = TextEditingController();
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late final TextEditingController emailController;

  void updateForm() {
    if (state is Loading) return;
    emit(const ForgotPasswordState.initial());
  }

  Future<void> submit() async {
    final isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    final email = emailController.text.trim();
    if (email.isEmpty) {
      emit(const ForgotPasswordState.error(error: 'Please enter your email'));
      return;
    }

    emit(const ForgotPasswordState.loading());

    try {
      final response = await authRepo.forgotPassword(
        ForgotPasswordRequestBody(email: email),
      );
      emit(ForgotPasswordState.success(response));
    } on NetworkExceptions catch (e) {
      emit(
        ForgotPasswordState.error(error: NetworkExceptions.getErrorMessage(e)),
      );
    } catch (e) {
      emit(
        const ForgotPasswordState.error(
          error: 'Failed to send reset link, please try again',
        ),
      );
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    return super.close();
  }
}
