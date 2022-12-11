import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inter_login/features/auth/application/sign_out_use_case.dart';
import 'package:inter_login/features/auth/domain/dto/user_credentials.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SignOutUseCase signOutUseCase;

  HomeBloc(this.signOutUseCase, UserCredentials? user) : super(_HomeState(user ?? UserCredentials.pure())) {
    on<_SignOut>((event, emit) {
      signOutUseCase();
    });
    on<_SetUserCredential>((event, emit) {
      emit(HomeState(event.user));
    });
  }
}
