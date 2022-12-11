import 'package:inter_login/features/auth/domain/interface_storage_repository.dart';

class SignOutUseCase {
  final InterfaceStorageRepository storageRepository;

  SignOutUseCase(this.storageRepository);

  call() => storageRepository.clearSession();
}
