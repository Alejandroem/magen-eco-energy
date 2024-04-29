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
    secureStorageService.getToken().then((token) {
      //Token exist
      if (token != null && token.isNotEmpty) {
        state = AuthState.authenticated(token);
      } else {
        //token doesnt exist
        state = AuthState.initial();
      }
    }, onError: (_) {
      //something went wrong
      state = AuthState.initial();
    });
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
