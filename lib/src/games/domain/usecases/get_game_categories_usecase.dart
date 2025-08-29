part of 'games_usecases.dart';

class GetGameCategoriesUsecase
    extends UseCaseWithNoParams<List<GameCategoryModel>> {
  final GamesRepository gamesRepository;

  GetGameCategoriesUsecase(this.gamesRepository);
  @override
  Future<Either<Failure, List<GameCategoryModel>>> call() {
    return gamesRepository.getGameCategories();
  }
}
