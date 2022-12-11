import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:inter_login/features/auth/domain/auth_failure.dart';
import 'package:inter_login/features/auth/domain/dto/request_login.dart';
import 'package:inter_login/features/auth/domain/dto/user_credentials.dart';
import 'package:inter_login/features/auth/domain/interface_auth_repository.dart';
import 'package:inter_login/features/auth/domain/value_objects.dart';
import 'package:http/http.dart' as http;
import 'package:inter_login/features/core/failures.dart';

class HttpAuthRepository implements InterfaceAuthRepository {
  @override
  Future<AuthLoginResult> loginWithCredentials(Username username, Password password) async {
    final body = RequestLogin(account: username.getOrCrash(), password: password.getOrCrash());
    try {
      final url = Uri.parse('https://talent-api-7dq3rzlexa-uc.a.run.app/v1/auth/login');

      final response = await http.post(url, body: jsonEncode(body.toJson()));

      if (response.statusCode == 401) return left(const GlobalFailure.serverError(AuthFailure.userNotExist()));

      if (response.statusCode != 200) return left(GlobalFailure.serverError(AuthFailure.unknow(response.body)));

      final decodedResponse = jsonDecode(response.body) as Map<String, dynamic>;

      return right(UserCredentials.fromJson(decodedResponse['body']));
    } catch (err, st) {
      return left(GlobalFailure.fromException(err, st));
    }
  }
}
