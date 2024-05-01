import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class SecureStorageService {
  Future<void> storeToken(String token);
  Future<String?> getToken();
  Future<void> deleteToken();
  Future<bool> needsReset();
  Future<void> setReset(bool value);
}

class FlutterSecureStorageService extends SecureStorageService {
  final _storage = const FlutterSecureStorage();

  @override
  Future<void> storeToken(String token) async {
    await _storage.write(key: 'jwt_token', value: token);
  }

  @override
  Future<String?> getToken() async {
    return await _storage.read(key: 'jwt_token');
  }

  @override
  Future<void> deleteToken() async {
    await _storage.delete(key: 'jwt_token');
  }

  @override
  Future<void> setReset(bool value) async {
    await _storage.write(key: 'reset_password', value: value.toString());
  }

  @override
  Future<bool> needsReset() {
    return _storage.read(key: 'reset_password').then((value) {
      return value == 'true';
    });
  }
}
