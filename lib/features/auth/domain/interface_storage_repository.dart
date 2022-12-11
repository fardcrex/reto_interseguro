import 'package:inter_login/features/auth/domain/dto/user_credentials.dart';

abstract class InterfaceStorageRepository {
  Future<void> saveSession(UserCredentials user);
  Future<void> clearSession();
  Future<UserCredentials?> getSession();
}
