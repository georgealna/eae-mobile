import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/error/error_handler/network_exceptions.dart';
import '../../data/models/register/register_request_body.dart';
import '../../data/models/register/register_response.dart';
import '../../data/repos/auth_repo.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepo authRepo;

  RegisterCubit({required this.authRepo})
    : super(const RegisterState.initial()) {
    emailController = TextEditingController();
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
    emit(const RegisterState.initial());
  }

  Future<void> submit() async {
    final isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    final password = passwordController.text.trim();
    final passwordConfirmation = passwordConfirmationController.text.trim();

    if (password != passwordConfirmation) {
      emit(
        const RegisterState.error(
          error: 'Password confirmation does not match',
        ),
      );
      return;
    }

    emit(const RegisterState.loading());

    try {
      final response = await authRepo.register(
        RegisterRequestBody(
          email: emailController.text.trim(),
          token: tokenController.text.trim(),
          password: password,
          passwordConfirmation: passwordConfirmation,
        ),
      );

      emit(RegisterState.success(response));
    } on NetworkExceptions catch (e) {
      emit(RegisterState.error(error: NetworkExceptions.getErrorMessage(e)));
    } catch (e) {
      emit(
        const RegisterState.error(
          error: 'Failed to register, please try again',
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
