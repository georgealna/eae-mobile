import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.initial());

  Timer? _timer;

  void start() {
    _timer?.cancel();

    const steps = <String>[
      'Establishing secure channel',
      'Encrypting connection',
      'Authenticating core systems',
      'Syncing policy modules',
      'Finalizing handshake',
    ];

    var index = 0;
    emit(SplashState.progress(progress: 0.1, status: steps.first));

    _timer = Timer.periodic(const Duration(milliseconds: 900), (timer) {
      index++;
      if (index >= steps.length) {
        emit(const SplashState.completed(status: 'Encrypted connection'));
        timer.cancel();
        return;
      }

      final progress = (index + 1) / (steps.length + 1);
      emit(SplashState.progress(progress: progress, status: steps[index]));
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
