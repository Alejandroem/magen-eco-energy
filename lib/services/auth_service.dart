import '../models/user.dart';

abstract class AuthService {
  Future<User> loginWithEmailAndPassword(String email, String password);
  Future<User> signUpWithEmailAndPassword(String email, String password);
  Future<bool> sendRecoveryEmail(String email);
  Future<bool> resetPassword(String code);
  Future<void> signOut();
  Stream<User?> get user;
}

class FakeAuthService implements AuthService {
  FakeAuthService();

  @override
  Future<User> loginWithEmailAndPassword(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return User(
      id: '123',
      email: email,
    );
  }

  @override
  Future<User> signUpWithEmailAndPassword(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return User(
      id: '123',
      email: email,
    );
  }

  @override
  Future<void> signOut() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Stream<User?> get user async* {
    await Future.delayed(const Duration(seconds: 1));
    yield null;
  }
  
  @override
  Future<bool> resetPassword(String code) {
    return Future.value(true);
  }
  
  @override
  Future<bool> sendRecoveryEmail(String email) async {
    Future.delayed(const Duration(seconds: 4));
    return true;
  }
}
