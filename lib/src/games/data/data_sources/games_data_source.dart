import 'package:fun88/src/games/data/repositories/model/params.dart';
import 'package:fun88/src/games/data/repositories/model/provider.dart';

import '../repositories/model/category.dart';
import '../repositories/model/game.dart';

abstract class GamesDataSource {
  Future<List<GameProviderModel>> getGameProviders();
  Future<List<GameCategoryModel>> getGameCategories();
  Future<List<GameModel>> getGames(GameParam param);
}
