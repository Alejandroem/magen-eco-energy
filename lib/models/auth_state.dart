import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  factory AuthState({
    required String jwt,
    required bool isAuthenticated,
    required bool isLoading,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, Object?> json) =>
      _$AuthStateFromJson(json);

  factory AuthState.initial() => AuthState(
        jwt: '',
        isAuthenticated: false,
        isLoading: false,
      );

  factory AuthState.authenticated(String token) => AuthState(
        jwt: token,
        isAuthenticated: true,
        isLoading: false,
      );

  factory AuthState.loading() => AuthState(
        jwt: '',
        isAuthenticated: false,
        isLoading: true,
      );

  bool get isLoggedIn => isAuthenticated && jwt.isNotEmpty;
}
