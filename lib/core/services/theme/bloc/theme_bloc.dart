import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_state.dart';
part 'theme_event.dart';
part 'theme_bloc.freezed.dart';

part 'theme_bloc.g.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<_ThemeToggled>((event, emit) {
      emit(state.copyWith(isDarkMode: !state.isDarkMode));
    });
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) => _$ThemeStateFromJson(json);

  @override
  Map<String, dynamic>? toJson(ThemeState state) => _$ThemeStateToJson(state);
}
