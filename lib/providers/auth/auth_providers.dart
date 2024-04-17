import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/auth_state.dart';
import '../../notifiers/auth_state_notifier.dart';
import '../../services/auth_service.dart';
import '../storage/secure_storage_provider.dart';

final authServiceProvider = Provider<AuthService>((ref) {
  return ShadowboxAuthService();
});

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier(ref.read(secureStorageProvider));
});
