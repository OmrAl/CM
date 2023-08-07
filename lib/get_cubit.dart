abstract class GetState {
}

class GetInitialState extends GetState {}

class GetStateSuccess extends GetState {}

class GetStateReload extends GetState {

}

class GetStateError extends GetState {
  final String error;
  GetStateError(this.error);
}
