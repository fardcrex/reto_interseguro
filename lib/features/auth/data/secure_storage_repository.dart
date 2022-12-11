import 'package:inter_login/features/auth/domain/dto/user_credentials.dart';
import 'package:inter_login/features/auth/domain/interface_storage_repository.dart';
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageRepository implements InterfaceStorageRepository {
  final _storage = const FlutterSecureStorage();

  final _key = 'User_Credentials';

  @override
  Future<void> clearSession() async {
    await _storage.deleteAll();
  }

  @override
  Future<void> saveSession(UserCredentials user) async {
    final value = jsonEncode(user.copyWith(isSaveSession: true).toJson());

    await _storage.write(key: _key, value: value);
  }

  @override
  Future<UserCredentials?> getSession() async {
    final data = await _storage.read(key: _key);

    if (data == null) return null;

    return UserCredentials.fromJson(jsonDecode(data));
  }
}
