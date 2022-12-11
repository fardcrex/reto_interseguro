import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials.freezed.dart';
part 'user_credentials.g.dart';

@freezed
class UserCredentials with _$UserCredentials {
  const factory UserCredentials({required String name, @Default(false) bool isSaveSession}) = _UserCredentials;

  factory UserCredentials.pure() => const UserCredentials(name: '');

  factory UserCredentials.fromJson(Map<String, dynamic> json) => _$UserCredentialsFromJson(json);
}
