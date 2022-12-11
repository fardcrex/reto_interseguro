part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.usernameChanged(String username) = _UsernameChanged;
  const factory AuthEvent.passwordChanged(String password) = _PasswordChanged;
  const factory AuthEvent.rememberMeChanged() = _RememberMeChanged;
  const factory AuthEvent.submitted() = _Submitted;
}
