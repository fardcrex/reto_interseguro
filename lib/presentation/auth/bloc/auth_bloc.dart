import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inter_login/features/auth/application/login_use_case.dart';
import 'package:inter_login/features/auth/domain/auth_failure.dart';
import 'package:inter_login/features/auth/domain/dto/user_credentials.dart';
import 'package:inter_login/features/auth/domain/value_objects.dart';
import 'package:inter_login/features/core/failures.dart';
export 'package:inter_login/features/auth/application/login_use_case.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;

  AuthBloc(this.loginUseCase) : super(AuthState.initial()) {
    on<_UsernameChanged>(_onUsernameChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_RememberMeChanged>(_onRememberMeChanged);
    on<_Submitted>(_onSubmitted);
  }

  FutureOr<void> _onUsernameChanged(_UsernameChanged event, Emitter<AuthState> emit) {
    final username = UsernameForm.dirty(event.username);

    emit(state.copyWith(
      username: username,
      status: Formz.validate([state.password, username]),
    ));
  }

  FutureOr<void> _onPasswordChanged(_PasswordChanged event, Emitter<AuthState> emit) {
    final password = PasswordForm.dirty(event.password);

    emit(state.copyWith(
      password: password,
      status: Formz.validate([password, state.username]),
    ));
  }

  FutureOr<void> _onSubmitted(_Submitted event, Emitter<AuthState> emit) async {
    final password = PasswordForm.dirty(state.password.value);
    final username = UsernameForm.dirty(state.username.value);

    emit(state.copyWith(
      password: password,
      username: username,
      status: Formz.validate([password, username]),
      failureOrSuccessOption: none(),
    ));

    if (!state.status.isValidated) return emit(state.copyWith(status: FormzStatus.submissionFailure));

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final resultAuth = await loginUseCase.call(
      usernameStr: state.username.value,
      passwordStr: state.password.value,
      isRememberMe: state.isRememberMe,
    );

    emit(state.copyWith(
      status: FormzStatus.submissionSuccess,
      failureOrSuccessOption: some(resultAuth),
    ));
  }

  FutureOr<void> _onRememberMeChanged(_RememberMeChanged event, Emitter<AuthState> emit) {
    emit(state.copyWith(isRememberMe: !state.isRememberMe));
  }
}
