part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.signOut() = _SignOut;
  const factory HomeEvent.setUserCredential(UserCredentials user) = _SetUserCredential;
}
