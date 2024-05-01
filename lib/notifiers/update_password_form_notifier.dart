import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/models/update_password_form.dart';

import '../providers/auth/auth_providers.dart';

class UpdatePasswordFormNotifier extends Notifier<UpdatePasswordForm> {
  @override
  UpdatePasswordForm build() {
    return const UpdatePasswordForm(
      password: "",
      confirmPassword: "",
      errors: [],
    );
  }

  void setPassword(String password) {
    state = state.copyWith(password: password, errors: []);
  }

  void setConfirmPassword(String confirmPassword) {
    state = state.copyWith(confirmPassword: confirmPassword, errors: []);
  }

  bool isPasswordValid() {
    if (state.password!.length < 8) {
      state = state.copyWith(
        errors: ["Password must be at least 8 characters"],
      );
      return false;
    }
    return true;
  }

  bool isConfirmPasswordValid() {
    if (state.confirmPassword != state.password) {
      state = state.copyWith(
        errors: ["Passwords do not match"],
      );
      return false;
    }
    return true;
  }

  void updateAndAccess() async {
    final authService = ref.read(authServiceProvider);
    if (isPasswordValid() && isConfirmPasswordValid()) {
      bool success = await authService.updatePassword(state.password!);
      if (success) {
        state = state.copyWith(errors: []);
        ref.read(authStateProvider.notifier).passwordResetComplete();
      } else {
        state = state.copyWith(
          errors: ["An error occurred while updating your password"],
        );
      }
    }
  }
}
