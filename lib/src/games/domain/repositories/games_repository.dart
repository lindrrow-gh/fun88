import 'package:fpdart/fpdart.dart';
import 'package:fun88/src/games/data/repositories/model/params.dart';

import '../../../../core/services/clean_arch/usecase/failure.dart';
import '../../data/data_sources/games_data_source.dart';
import '../../data/repositories/model/category.dart';
import '../../data/repositories/model/game.dart';
import '../../data/repositories/model/provider.dart';

abstract class GamesRepository {
  final GamesDataSource dataSource;
  GamesRepository({required this.dataSource});

  Future<Either<Failure, List<GameCategoryModel>>> getGameCategories();
  Future<Either<Failure, List<GameProviderModel>>> getGameProviders();
  Future<Either<Failure, List<GameModel>>> getGames(GameParam param);
}
