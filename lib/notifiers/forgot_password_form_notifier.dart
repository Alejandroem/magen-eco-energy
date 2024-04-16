import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/models/forgot_password_form.dart';
import 'package:myapp/providers/auth/auth_providers.dart';

class ForgotPasswordFormNotifier extends Notifier<ForgotPasswordForm> {
  Timer? _codeTimer;
  ForgotPasswordFormNotifier();

  @override
  build() {
    return const ForgotPasswordForm(
      email: "",
      errors: [],
      timeText: "",
      verificationInProgress: false,
      code: null,
    );
  }

  bool isEmailValid() {
    final emailRegEx = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegEx.hasMatch(state.email)) {
      log('Invalid: Email format is incorrect');
      return false;
    }
    if (state.errors.isNotEmpty) {
      log("Invalid: form contains errors");
      return false;
    }
    return true;
  }

  bool isCodeValid() {
    if (state.code != null && state.code!.isNotEmpty) {
      log("Invalid: form contains errors");
      return false;
    }
    return true;
  }

  Future<void> requestVerificationCode() async {
    final authService = ref.read(authServiceProvider);
    final emailSent = await authService.sendRecoveryEmail(state.email);

    if (emailSent) {
      if (_codeTimer != null) {
        _codeTimer?.cancel(); // Ensures that we do not have overlapping timers.
      }

      const countdownDuration = 5 * 60; // 5 minutes in seconds
      int currentSeconds = countdownDuration;

      // Start timer
      _codeTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
        int minutes = currentSeconds ~/ 60;
        int seconds = currentSeconds % 60;  
        String minutesText = minutes.toString().padLeft(2, '0');
        String secondsText = seconds.toString().padLeft(2, '0');
        state = state.copyWith(
          timeText: '$minutesText:$secondsText',
        );

        if (currentSeconds == 0) {
          timer.cancel();
          state = state.copyWith(
            timeText: '',
            errors: [
              'The code has expired, try again',
              ...state.errors,
            ],
          );
        } else {
          currentSeconds--;
        }
      });
      state = state.copyWith(
        verificationInProgress: true,
      );
    } else {
      // Show error message to the user
      state = state.copyWith(errors: [
        "Failed to send recovery email.",
        ...state.errors,
      ]);
    }
  }

  Future<bool> validateVerificationCode() async {
    final authService = ref.read(authServiceProvider);
    final canReset = await authService.resetPassword(state.code!);
    return canReset;
  }

  void setEmail(String email) {
    state = state.copyWith(errors: []);
    if (email.isEmpty) return;
    //regex for email
    final emailRegEx = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegEx.hasMatch(email)) {
      state = state.copyWith(
        errors: ['Invalid email'],
      );
    } else {
      state = state.copyWith(
        email: email,
      );
    }
  }

  void setVerificationCode(String value) {
    state = state.copyWith(code: value);
  }
}
