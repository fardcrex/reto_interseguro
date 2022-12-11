import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:inter_login/app.dart';
import 'package:inter_login/features/auth/domain/auth_failure.dart';
import 'package:inter_login/features/core/failures.dart';
import 'package:inter_login/presentation/auth/bloc/auth_bloc.dart';
import 'package:inter_login/presentation/auth/views/login_view.dart';
import 'package:inter_login/presentation/home/bloc/home_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final showerMessage = ShowerAuthMessagesSnackBar(context);
    return BlocProvider(
      create: (context) => AuthBloc(RepositoryProvider.of<LoginUseCase>(context)),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status.isSubmissionSuccess) {
            state.failureOrSuccessOption.forEach((resultOption) {
              resultOption.fold(
                showerMessage.showErrorNotSucces,
                (user) {
                  context.read<HomeBloc>().add(HomeEvent.setUserCredential(user));
                  Navigator.pushNamedAndRemoveUntil(context, RoutesPath.HOME, (_) => false);
                },
              );
            });
          }
        },
        builder: (context, state) {
          return const LoginView();
        },
      ),
    );
  }
}

class ShowerAuthMessagesSnackBar {
  final BuildContext context;

  ShowerAuthMessagesSnackBar(this.context);
  void showErrorNotSucces(GlobalFailure<AuthFailure> failure) {
    showSnackBar(
      failure.when(
        serverError: (failure) => failure.when(
          unknow: (code) => 'Error en el servidor',
          userNotExist: () => 'El usuario no existe',
        ),
        notConnection: () => 'Verifique su conexión',
        timeOutExceeded: () => 'Tiempo de espera excedido',
        internalError: (_, __) => 'App desactualizada',
      ),
    );
  }

  void showSnackBar(String text) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(text)),
    );
  }
}
