import '../models/user.dart';

abstract class AuthService {
  Future<User> signInWithEmailAndPassword(String email, String password);
  Future<User> signUpWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  Stream<User> get user;
}

class FakeAuthService implements AuthService {
  FakeAuthService();

  @override
  Future<User> signInWithEmailAndPassword(String email, String password) async {
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
  Stream<User> get user async* {
    yield User(id: '123', email: 'test@test.com');
  }
}
