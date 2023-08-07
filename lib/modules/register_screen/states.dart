abstract class RegisterState {
}

class RegisterInitialState extends RegisterState {}

class RegisterStateSuccess extends RegisterState {}

class RegisterStateReload extends RegisterState {

}

class RegisterStateError extends RegisterState {
  final String error;
  RegisterStateError(this.error);
}
