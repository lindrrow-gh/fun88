part of 'theme_bloc.dart';

@JsonSerializable()
@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({@Default(false) bool isDarkMode}) = _ThemeState;
}
