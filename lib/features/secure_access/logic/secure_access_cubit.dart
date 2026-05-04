import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'secure_access_state.dart';
part 'secure_access_cubit.freezed.dart';

class SecureAccessCubit extends Cubit<SecureAccessState> {
  SecureAccessCubit() : super(const SecureAccessState.ready());

  Timer? _timer;

  void updateEmail(String value) {
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
    return super.close();
  }
}
