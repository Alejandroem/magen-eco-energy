import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/services/secure_storage_service.dart';

final secureStorageProvider = Provider<SecureStorageService>((ref) {
  return FlutterSecureStorageService();
});
