import 'package:flutter/material.dart';
import 'package:inter_login/features/auth/data/http_auth_repository.dart';
import 'package:inter_login/features/auth/data/secure_storage_repository.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final authRepository = HttpAuthRepository();
  final sessionRepository = SecureStorageRepository();

  runApp(BlocApp(
    authRepository: authRepository,
    storageRepository: sessionRepository,
    user: await sessionRepository.getSession(),
  ));
}
