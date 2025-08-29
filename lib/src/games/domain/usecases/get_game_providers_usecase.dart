part of 'games_usecases.dart';

class GetGameProvidersUsecase
    extends UseCaseWithNoParams<List<GameProviderModel>> {
  final GamesRepository _repository;

  GetGameProvidersUsecase(this._repository);

  @override
  Future<Either<Failure, List<GameProviderModel>>> call() {
    return _repository.getGameProviders();
  }
}
