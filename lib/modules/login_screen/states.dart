abstract class LoginState {
}

class LoginInitialState extends LoginState {}

class LoginStateSuccess extends LoginState {
  late final String uid;
  LoginStateSuccess(this.uid);
}

class LoginStateReload extends LoginState {}

class LoginStateError extends LoginState {
  final String error;
  LoginStateError(this.error);
}
