import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/services/secure_storage_service.dart';

import '../models/auth_state.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final SecureStorageService secureStorageService;

  AuthStateNotifier(this.secureStorageService) : super(AuthState.initial());

  Future<void> storeToken(String token) async {
    await secureStorageService.storeToken(token);
    state = AuthState.authenticated(token);
  }

  Future<void> deleteToken() async {
    await secureStorageService.deleteToken();
    state = AuthState.initial();
  }
}
