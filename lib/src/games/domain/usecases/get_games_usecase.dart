part of 'games_usecases.dart';

class GetGamesUsecase
    extends UseCaseWithParams<List<GameModel>, GameParam> {
  final GamesRepository gamesRepository;

  GetGamesUsecase(this.gamesRepository);
  @override
  Future<Either<Failure, List<GameModel>>> call(GameParam params) {
    return gamesRepository.getGames(params);
  }
}
