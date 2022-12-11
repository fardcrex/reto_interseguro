import 'package:inter_login/features/auth/domain/interface_auth_repository.dart';
import 'package:inter_login/features/auth/domain/interface_storage_repository.dart';
import 'package:inter_login/features/auth/domain/value_objects.dart';

class LoginUseCase {
  final InterfaceStorageRepository storageRepository;
  final InterfaceAuthRepository authRepository;

  LoginUseCase(this.storageRepository, this.authRepository);

  Future<AuthLoginResult> call({
    required String usernameStr,
    required String passwordStr,
    required bool isRememberMe,
  }) async {
    final username = Username(usernameStr);
    final password = Password(passwordStr);

    /*  if (!username.isValid() || !password.isValid()) {
      return left(const GlobalFailure.serverError(AuthFailure.userNotExist()));
    }
 */
    final response = await authRepository.loginWithCredentials(username, password);

    if (isRememberMe) response.forEach(storageRepository.saveSession);

    return response.map((user) => user.copyWith(isSaveSession: isRememberMe));
  }
}
