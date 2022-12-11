import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inter_login/presentation/auth/bloc/auth_bloc.dart';

class CheckBoxRememberMe extends StatelessWidget {
  const CheckBoxRememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AuthBloc, AuthState, bool>(
      selector: (state) {
        return state.isRememberMe;
      },
      builder: (context, isRememberMe) {
        return Theme(
          data: ThemeData(checkboxTheme: const CheckboxThemeData(shape: CircleBorder())),
          child: Row(
            children: [
              Checkbox(
                value: isRememberMe,
                onChanged: (value) {
                  context.read<AuthBloc>().add(const AuthEvent.rememberMeChanged());
                },
              ),
              const Text(
                'Remember me',
                style: TextStyle(fontFamily: 'NunitoSansSemibold', fontSize: 14),
              )
            ],
          ),
        );
      },
    );
  }
}
