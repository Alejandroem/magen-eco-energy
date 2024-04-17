import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/models/signup_form.dart';
import 'package:myapp/models/user.dart';

import '../providers/auth/auth_providers.dart';

class SignUpFormNotifier extends Notifier<SignupForm> {
  SignUpFormNotifier();

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

    if ((state.user.fullName ?? "").isEmpty) {
      log('Invalid: Full Name is empty');
      return false;
    }
    if ((state.user.username ?? "").isEmpty) {
      log('Invalid: Username is empty');
      return false;
    }
    if ((state.user.streetAddress ?? "").isEmpty) {
      log('Invalid: Street Address is empty');
      return false;
    }
    if ((state.user.city ?? "").isEmpty) {
      log('Invalid: City is empty');
      return false;
    }
    if ((state.user.stateOrProvince ?? "").isEmpty) {
      log('Invalid: State or Province is empty');
      return false;
    }
    if ((state.user.country ?? "").isEmpty) {
      log('Invalid: Country is empty');
      return false;
    }
    if ((state.user.postalCode ?? "").isEmpty) {
      log('Invalid: Postal Code is empty');
      return false;
    }
    if ((state.user.phoneNumber ?? "").isEmpty) {
      log('Invalid: Phone Number is empty');
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

  void setFullName(String fullName) {
    state = state.copyWith(
      user: state.user.copyWith(
        fullName: fullName,
      ),
    );
  }

  void setUsername(String username) {
    state = state.copyWith(
      user: state.user.copyWith(
        username: username,
      ),
    );
  }

  void setStreetAddress(String streetAddress) {
    state = state.copyWith(
      user: state.user.copyWith(
        streetAddress: streetAddress,
      ),
    );
  }

  void setCity(String city) {
    state = state.copyWith(
      user: state.user.copyWith(
        city: city,
      ),
    );
  }

  void setStateOrProvince(String stateOrProvince) {
    state = state.copyWith(
      user: state.user.copyWith(
        stateOrProvince: stateOrProvince,
      ),
    );
  }

  void setCountry(String country) {
    state = state.copyWith(
      user: state.user.copyWith(
        country: country,
      ),
    );
  }

  void setPostalCode(String postalCode) {
    state = state.copyWith(
      user: state.user.copyWith(
        postalCode: postalCode,
      ),
    );
  }

  void setPhoneNumber(String phoneNumber) {
    state = state.copyWith(
      user: state.user.copyWith(
        phoneNumber: phoneNumber,
      ),
    );
  }

  @override
  build() {
    return const SignupForm(
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
      state = state.copyWith(
        errors: ['Invalid email or password'],
        isLoading: false,
      );
    }
  }

  void signup() {}
}
