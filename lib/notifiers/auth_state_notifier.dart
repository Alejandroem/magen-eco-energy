import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/services/secure_storage_service.dart';

import '../models/auth_state.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final SecureStorageService secureStorageService;

  AuthStateNotifier(this.secureStorageService)
      : super(
          //Loading is the entry point
          AuthState.loading(),
        ) {
    intializeAuthentication();
  }

  Future<void> intializeAuthentication() async {
    final token = await secureStorageService.getToken();
    final needsReset = await secureStorageService.needsReset();
    if (token != null && token.isNotEmpty) {
      if (needsReset) {
        state = AuthState.authWithResetPassword(token);
      } else {
        state = AuthState.authenticated(token);
      }
    } else {
      state = AuthState.initial();
    }
  }

  Future<void> storeTokenAndPrepareForReset(String token) async {
    await secureStorageService.storeToken(token);
    await secureStorageService.setReset(true);
    state = AuthState.authWithResetPassword(token);
  }

  Future<void> passwordResetComplete() async {
    await secureStorageService.setReset(false);
    state = AuthState.authenticated(state.jwt);
  }

  Future<void> storeToken(String token) async {
    await secureStorageService.storeToken(token);
    state = AuthState.authenticated(token);
  }

  Future<void> deleteToken() async {
    await secureStorageService.deleteToken();
    state = AuthState.initial();
  }
}
