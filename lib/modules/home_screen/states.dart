abstract class HomeState {
}

class HomeInitialState extends HomeState {}

class HomeStateSuccess extends HomeState {}

class HomeStateReload extends HomeState {}

class HomeStateError extends HomeState {
  final String error;
  HomeStateError(this.error);
}
