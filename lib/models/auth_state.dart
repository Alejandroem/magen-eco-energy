import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required String jwt,
    required bool isAuthenticated,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, Object?> json) =>
      _$AuthStateFromJson(json);

  factory AuthState.initial() => AuthState(
        jwt: '',
        isAuthenticated: false,
      );

  factory AuthState.authenticated(String token) => AuthState(
        jwt: token,
        isAuthenticated: true,
      );

  bool get isLoggedIn => isAuthenticated && jwt.isNotEmpty;
}
