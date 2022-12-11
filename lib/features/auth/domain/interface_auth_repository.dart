import 'package:dartz/dartz.dart';
import 'package:inter_login/features/auth/domain/auth_failure.dart';
import 'package:inter_login/features/auth/domain/dto/user_credentials.dart';
import 'package:inter_login/features/auth/domain/value_objects.dart';
import 'package:inter_login/features/core/failures.dart';

abstract class InterfaceAuthRepository {
  Future<AuthLoginResult> loginWithCredentials(Username username, Password password);
}

typedef AuthLoginResult = Either<GlobalFailure<AuthFailure>, UserCredentials>;
