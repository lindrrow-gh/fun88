part of 'games_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.getGames(GameParam param) = _GetGames;
  const factory GameEvent.getCategories() = _GetCategories;
  const factory GameEvent.getProviders() = _GetProviders;
  const factory GameEvent.selectCategory(GameCategoryModel category) =
      _SelectCategory;
  const factory GameEvent.selectProvider(GameProviderModel provider) = _SelectProvider;
}
