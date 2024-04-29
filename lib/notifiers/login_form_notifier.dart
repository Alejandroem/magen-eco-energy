import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/models/user.dart';

import '../models/login_form.dart';
import '../providers/auth/auth_providers.dart';

class LoginFormNotifier extends Notifier<LoginForm> {
  LoginFormNotifier();

  bool isValid() {
    if (state.user.email.isEmpty) {
      log('Invalid: Email is empty');
      return false;
    }
    if (state.password.isEmpty) {
      log('Invalid: Password is empty');
      return false;
    }
    if (state.errors.isNotEmpty) {
      log('Invalid: Errors exist');
      return false;
    }
    if (state.isLoading) {
      log('Invalid: Loading is in progress');
      return false;
    }
    final emailRegEx = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegEx.hasMatch(state.user.email)) {
      log('Invalid: Email format is incorrect');
      return false;
    }
    final passwordRegEx = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d\S]{8,}$');
    if (!passwordRegEx.hasMatch(state.password)) {
      log('Invalid: Password format is incorrect');
      return false;
    }
    return true;
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
        user: state.user.copyWith(
          email: email,
        ),
      );
    }
  }

  void setPassword(String password) {
    state = state.copyWith(
      password: password,
      errors: [],
    );
  }

  void togglePassword() {
    state = state.copyWith(
      obscurePassword: !state.obscurePassword,
    );
  }

  @override
  build() {
    return const LoginForm(
      errors: [],
      user: User(
        id: '',
        email: "",
      ),
      isLoading: false,
      obscurePassword: true,
      password: "",
    );
  }

  void login() async {
    state = state.copyWith(
      isLoading: true,
    );
    try {
      final authService = ref.read(authServiceProvider);
      final jwt = await authService.loginWithEmailAndPassword(
        state.user.email,
        state.password,
      );
      ref.read(authStateProvider.notifier).storeToken(jwt);
      state = state.copyWith(
        isLoading: false,
      );
    } catch (e) {
      log(e.toString());
      state = state.copyWith(
        errors: ['Invalid email or password'],
        isLoading: false,
      );
    }
  }
}
