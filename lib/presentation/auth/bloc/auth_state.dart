part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required FormzStatus status,
    required PasswordForm password,
    required UsernameForm username,
    required bool isRememberMe,
    required Option<Either<GlobalFailure<AuthFailure>, UserCredentials>> failureOrSuccessOption,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        username: UsernameForm.pure(),
        password: PasswordForm.pure(),
        failureOrSuccessOption: None(),
        status: FormzStatus.pure,
        isRememberMe: false,
      );
}

class PasswordForm extends FormzInput<String, ValueFailure<String>> {
  const PasswordForm.pure() : super.pure('');

  const PasswordForm.dirty([super.value = '']) : super.dirty();

  @override
  ValueFailure<String>? validator(String value) {
    final password = Password(value);

    return password.value.fold(
      (l) => l,
      (r) => null,
    );
  }
}

class UsernameForm extends FormzInput<String, ValueFailure<String>> {
  const UsernameForm.pure() : super.pure('');

  const UsernameForm.dirty([super.value = '']) : super.dirty();

  @override
  ValueFailure<String>? validator(String value) {
    final email = Username(value);

    return email.value.fold(
      (l) => l,
      (r) => null,
    );
  }
}
