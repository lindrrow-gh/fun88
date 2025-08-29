import 'package:fun88/src/games/data/data_sources/games_data_source_remote.dart';
import 'package:fun88/src/games/data/repositories/games_repository_impl.dart';
import 'package:fun88/src/games/domain/repositories/games_repository.dart';
import 'package:fun88/src/games/domain/usecases/games_usecases.dart';
import 'package:get_it/get_it.dart';

import '../../../../src/games/data/data_sources/games_data_source.dart';

class DependencyInjector {
  final getIt = GetIt.instance;

  void init() {
    if (!getIt.isRegistered<GamesDataSource>(instance: GamesRemoteDataSource)) {
      getIt.registerLazySingleton<GamesDataSource>(
        () => GamesRemoteDataSource(),
      );

      getIt.registerLazySingleton<GamesRepository>(
        () => GamesRepositoryImpl(dataSource: getIt()),
      );

      getIt.registerLazySingleton(() => GetGameCategoriesUsecase(getIt()));
      getIt.registerLazySingleton(() => GetGamesUsecase(getIt()));
      getIt.registerLazySingleton(() => GetGameProvidersUsecase(getIt()));
    }
  }
}
