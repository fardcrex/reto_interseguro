import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inter_login/app.dart';
import 'package:inter_login/features/auth/domain/dto/user_credentials.dart';
import 'package:inter_login/presentation/home/bloc/home_bloc.dart';

class HomeBlocPage extends StatelessWidget {
  const HomeBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interseguro',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'NunitoSansExtrabold',
            )),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Color(0xFF17ead9), Color(0xFF6078ea)],
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                context.read<HomeBloc>().add(const HomeEvent.signOut());
                Navigator.pushNamedAndRemoveUntil(context, RoutesPath.LOGIN, (_) => false);
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: Center(
        child: BlocSelector<HomeBloc, HomeState, UserCredentials>(
          selector: (state) => state.user,
          builder: (context, user) {
            const textStyle = TextStyle(
              fontSize: 16,
              fontFamily: 'NunitoSansBold',
            );
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 6),
                const Text('Empleado Logueado:', style: textStyle),
                Text(user.name, style: textStyle),
                const Spacer(),
                const Text('¿Mantener sesión iniciada?', style: textStyle),
                Text(user.isSaveSession.toString(), style: textStyle),
                const Spacer(flex: 6),
              ],
            );
          },
        ),
      ),
    );
  }
}
