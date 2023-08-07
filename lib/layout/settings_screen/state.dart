abstract class SettingsState {
}

class SettInitialState extends SettingsState {}

class SettStateSuccess extends SettingsState {}

class SettStateReload extends SettingsState {}

class SettStateError extends SettingsState {
  final String error;
  SettStateError(this.error);
}
