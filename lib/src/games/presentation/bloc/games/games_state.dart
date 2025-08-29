part of 'games_bloc.dart';

@freezed
abstract class GameState with _$GameState {
  const factory GameState({
    @Default(GamesState()) GamesState gamesState,
    @Default(GameCategoriesState()) GameCategoriesState categoriesState,
    @Default(GameProvidersState()) GameProvidersState providersState,
  }) = _GameState;
}

@freezed
abstract class GamesState with _$GamesState {
  const factory GamesState({
    @Default(GamesStateStatus.initial) GamesStateStatus status,
    @Default([]) List<GameModel> games,
    @Default(0) int currentTotalGames,
    GameParam? param,
    @Default('') String eventMessage,
  }) = _GamesState;
}

@freezed
abstract class GameCategoriesState with _$GameCategoriesState {
  const factory GameCategoriesState({
    @Default(GameCategoriesStateStatus.initial)
    GameCategoriesStateStatus status,
    @Default([]) List<GameCategoryModel> categories,
    @Default(GameCategoryModel()) GameCategoryModel selectedCategory,
    @Default('') String eventMessage,
  }) = _GameCategoriesState;
}

@freezed
abstract class GameProvidersState with _$GameProvidersState {
  const factory GameProvidersState({
    @Default(GameProvidersStateStatus.initial) GameProvidersStateStatus status,
    @Default([]) List<GameProviderModel> providers,
    @Default([]) List<GameProviderModel> currentProviders,
    @Default(GameProviderModel()) GameProviderModel selectedProvider,
    @Default('') String eventMessage,
  }) = _GameProvidersState;
}
