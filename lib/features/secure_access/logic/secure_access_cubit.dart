import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'secure_access_state.dart';
part 'secure_access_cubit.freezed.dart';

class SecureAccessCubit extends Cubit<SecureAccessState> {
  SecureAccessCubit() : super(const SecureAccessState.ready()) {
    emailController = TextEditingController();
    emailController.addListener(_handleEmailChanged);
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late final TextEditingController emailController;
  bool _isSyncingController = false;

  Timer? _timer;

  void _handleEmailChanged() {
    if (_isSyncingController) {
      return;
    }

    updateEmail(emailController.text);
  }

  void _syncEmailController(String value) {
    if (emailController.text == value) {
      return;
    }

    _isSyncingController = true;
    emailController
      ..text = value
      ..selection = TextSelection.collapsed(offset: value.length);
    _isSyncingController = false;
  }

  void updateEmail(String value) {
    _syncEmailController(value);
    state.maybeWhen(
      ready: (email, selectedPartner, isSubmitting, errorMessage) {
        emit(
          SecureAccessState.ready(
            email: value,
            selectedPartner: selectedPartner,
            isSubmitting: isSubmitting,
            errorMessage: errorMessage,
          ),
        );
      },
      orElse: () => emit(SecureAccessState.ready(email: value)),
    );
  }

  void selectPartner(String partner) {
    state.maybeWhen(
      ready: (email, _, isSubmitting, errorMessage) {
        emit(
          SecureAccessState.ready(
            email: email,
            selectedPartner: partner,
            isSubmitting: isSubmitting,
            errorMessage: errorMessage,
          ),
        );
      },
      orElse: () => emit(SecureAccessState.ready(selectedPartner: partner)),
    );
  }

  void submit() {
    final isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }

    state.maybeWhen(
      ready: (email, selectedPartner, _, __) {
        if (email.trim().isEmpty) {
          emit(
            SecureAccessState.ready(
              email: email,
              selectedPartner: selectedPartner,
              errorMessage: 'Please enter a corporate email or ID',
            ),
          );
          return;
        }

        emit(
          SecureAccessState.ready(
            email: email,
            selectedPartner: selectedPartner,
            isSubmitting: true,
          ),
        );

        _timer?.cancel();
        _timer = Timer(const Duration(milliseconds: 900), () {
          emit(const SecureAccessState.success());
        });
      },
      orElse: () {},
    );
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    emailController.dispose();
    return super.close();
  }
}
