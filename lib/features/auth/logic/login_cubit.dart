import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/login_response.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial()) {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    emailController.addListener(_handleEmailChanged);
    passwordController.addListener(_handlePasswordChanged);
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  Timer? _timer;
  bool _isSyncingController = false;

  void _handleEmailChanged() {
    if (_isSyncingController) {
      return;
    }

    updateEmail(emailController.text);
  }

  void _handlePasswordChanged() {
    if (_isSyncingController) {
      return;
    }

    updatePassword(passwordController.text);
  }

  void _syncController(TextEditingController controller, String value) {
    if (controller.text == value) {
      return;
    }

    _isSyncingController = true;
    controller
      ..text = value
      ..selection = TextSelection.collapsed(offset: value.length);
    _isSyncingController = false;
  }

  void updateEmail(String value) {
    _syncController(emailController, value);
    if (state is Loading) {
      return;
    }

    emit(const LoginState.initial());
  }

  void updatePassword(String value) {
    _syncController(passwordController, value);
    if (state is Loading) {
      return;
    }

    emit(const LoginState.initial());
  }

  void submitBiometric() {
    _setSubmitting();
  }

  void submit() {
    final isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }

    if (emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      emit(
        const LoginState.error(
          error: 'Please enter your corporate credentials',
        ),
      );
      return;
    }

    _setSubmitting();
  }

  void _setSubmitting() {
    emit(const LoginState.loading());

    _timer?.cancel();
    _timer = Timer(const Duration(milliseconds: 900), () {
      emit(
        LoginState.success(LoginResponse(email: emailController.text.trim())),
      );
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
