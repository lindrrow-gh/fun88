import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:fun88/core/services/clean_arch/usecase/failure.dart';
import 'package:fun88/src/games/data/repositories/model/category.dart';
import 'package:fun88/src/games/data/repositories/model/game.dart';
import 'package:fun88/src/games/data/repositories/model/params.dart';
import 'package:fun88/src/games/data/repositories/model/provider.dart';
import 'package:fun88/src/games/domain/repositories/games_repository.dart';

class GamesRepositoryImpl extends GamesRepository {
  GamesRepositoryImpl({required super.dataSource});

  @override
  Future<Either<Failure, List<GameCategoryModel>>> getGameCategories() async {
    try {
      final data = await dataSource.getGameCategories();
      return Right(data);
    } on DioException catch (e) {
      return Left(Failure.api(e));
    } catch (e) {
      return Left(Failure.local(e));
    }
  }

  @override
  Future<Either<Failure, List<GameModel>>> getGames(GameParam param) async {
    try {
      final data = await dataSource.getGames(param);
      return Right(data);
    } on DioException catch (e) {
      return Left(Failure.api(e));
    } catch (e) {
      return Left(Failure.local(e));
    }
  }

  @override
  Future<Either<Failure, List<GameProviderModel>>>
  getGameProviders() async {
    try {
      final data = await dataSource.getGameProviders();
      return Right(data);
    } on DioException catch (e) {
      return Left(Failure.api(e));
    } catch (e) {
      return Left(Failure.local(e));
    }
  }
}
