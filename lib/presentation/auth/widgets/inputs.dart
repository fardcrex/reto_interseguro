import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inter_login/presentation/auth/bloc/auth_bloc.dart';

class UsernameInputField extends StatelessWidget {
  const UsernameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return TextField(
          onChanged: (username) {
            context.read<AuthBloc>().add(AuthEvent.usernameChanged(username));
          },
          decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF00c6fb))),
            errorText: state.username.invalid
                ? state.username.error?.maybeWhen(
                    emptyOrNullCharacters: (_) => 'Field required',
                    orElse: () => 'Usurname inválid',
                  )
                : null,
          ),
        );
      },
    );
  }
}

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          obscureText: true,
          onChanged: (password) {
            context.read<AuthBloc>().add(AuthEvent.passwordChanged(password));
          },
          decoration: InputDecoration(
            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF00c6fb))),
            errorText: state.password.invalid
                ? state.password.error?.whenOrNull(
                    emptyOrNullCharacters: (_) => 'Field required',
                    invalidFormat: (_) => 'Password inválid',
                  )
                : null,
          ),
        );
      },
    );
  }
}
