import 'package:flutter/material.dart';
import 'package:inter_login/features/auth/application/sign_out_use_case.dart';
import 'package:inter_login/features/auth/domain/dto/user_credentials.dart';
import 'package:inter_login/features/auth/domain/interface_auth_repository.dart';
import 'package:inter_login/features/auth/domain/interface_storage_repository.dart';
import 'package:inter_login/presentation/auth/bloc/auth_bloc.dart';
import 'package:inter_login/presentation/auth/login_bloc_page.dart';
import 'package:inter_login/presentation/home/bloc/home_bloc.dart';
import 'package:inter_login/presentation/home/home_page.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class BlocApp extends StatelessWidget {
  const BlocApp({super.key, required this.storageRepository, required this.authRepository, this.user});

  final InterfaceStorageRepository storageRepository;
  final InterfaceAuthRepository authRepository;
  final UserCredentials? user;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<LoginUseCase>(create: (context) => LoginUseCase(storageRepository, authRepository)),
        RepositoryProvider<SignOutUseCase>(create: (context) => SignOutUseCase(storageRepository)),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (context) => HomeBloc(context.read<SignOutUseCase>(), user),
          ),
        ],
        child: MyApp(isLogged: user != null),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final bool isLogged;

  const MyApp({super.key, required this.isLogged});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        snackBarTheme: const SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
        ),
      ),
      initialRoute: isLogged ? RoutesPath.HOME : RoutesPath.LOGIN,
      routes: {
        RoutesPath.LOGIN: (context) => const LoginPage(),
        RoutesPath.HOME: (context) => const HomeBlocPage(),
      },
    );
  }
}

class RoutesPath {
  static const LOGIN = '/login';
  static const HOME = '/home';
}
