import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inter_login/presentation/auth/bloc/auth_bloc.dart';

import 'package:formz/formz.dart';

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(8);
    return BlocSelector<AuthBloc, AuthState, bool>(
      selector: (state) {
        return state.status.isSubmissionInProgress;
      },
      builder: (context, isSubmissionInProgress) {
        if (isSubmissionInProgress) {
          return const CircularProgressIndicator(
            color: Color(0xFF17ead9),
          );
        }

        return Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Color(0xFF17ead9), Color(0xFF6078ea)],
            ),
            borderRadius: borderRadius,
          ),
          child: ElevatedButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
                context.read<AuthBloc>().add(const AuthEvent.submitted());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(borderRadius: borderRadius),
                padding: const EdgeInsets.fromLTRB(42, 22, 42, 22),
              ),
              child: const Text(
                'SIGNIN',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              )),
        );
      },
    );
  }
}
