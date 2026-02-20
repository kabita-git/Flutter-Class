import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthSessionStorage {
  AuthSessionStorage._();

  static const _isLoggedInKey = 'is_logged_in';
  static const _userEmailKey = 'user_email';
  static const _userUidKey = 'user_uid';

  static const _storage = FlutterSecureStorage(
    // ignore: deprecated_member_use
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );  

  /// Returns true if the user has previously logged in (session flag stored).
  static Future<bool> isLoggedIn() async {
    final value = await _storage.read(key: _isLoggedInKey);
    return value == 'true';
  }

  /// Record that the user is logged in and store basic info.
  static Future<void> setSession({required String email, required String uid}) async {
    await _storage.write(key: _isLoggedInKey, value: 'true');
    await _storage.write(key: _userEmailKey, value: email);
    await _storage.write(key: _userUidKey, value: uid);
  }

  /// Retrieve the stored email (or null if none).
  static Future<String?> getUserEmail() async {
    return _storage.read(key: _userEmailKey);
  }

  /// Retrieve the stored UID (or null if none).
  static Future<String?> getUserUid() async {
    return _storage.read(key: _userUidKey);
  }

  /// Clears all session information.
  static Future<void> clearSession() async {
    await _storage.delete(key: _isLoggedInKey);
    await _storage.delete(key: _userEmailKey);
    await _storage.delete(key: _userUidKey);
  }
}
