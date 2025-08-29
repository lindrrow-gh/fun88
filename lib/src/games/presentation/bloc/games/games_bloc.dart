import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fun88/core/services/log/log.dart';
import 'package:fun88/src/games/data/repositories/model/params.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/constants/games.dart';
import '../../../data/repositories/model/category.dart';
import '../../../data/repositories/model/game.dart';
import '../../../data/repositories/model/provider.dart';
import '../../../domain/usecases/games_usecases.dart';

part 'games_state.dart';
part 'games_event.dart';
part 'games_bloc.freezed.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final _getGamesUseCase = GetIt.instance<GetGamesUsecase>();
  final _getCategoriesUseCase = GetIt.instance<GetGameCategoriesUsecase>();
  final _getProvidersUseCase = GetIt.instance<GetGameProvidersUsecase>();

  GameBloc() : super(const GameState()) {
    on<_GetCategories>((event, emit) async {
      GameCategoriesState categoriesState = state.categoriesState;
      categoriesState = categoriesState.copyWith(
        status: GameCategoriesStateStatus.loading,
      );

      emit(state.copyWith(categoriesState: categoriesState));

      final dataOrFailure = await _getCategoriesUseCase();

      dataOrFailure.fold(
        (failure) {
          categoriesState = categoriesState.copyWith(
            status: GameCategoriesStateStatus.failed,
          );
        },
        (categories) {
          categoriesState = categoriesState.copyWith(
            status: GameCategoriesStateStatus.success,
            categories: categories,
          );
        },
      );

      emit(state.copyWith(categoriesState: categoriesState));
    });

    on<_GetProviders>((event, emit) async {
      GameProvidersState providersState = state.providersState;
      providersState = providersState.copyWith(
        status: GameProvidersStateStatus.loading,
      );

      emit(state.copyWith(providersState: providersState));

      final dataOrFailure = await _getProvidersUseCase();

      dataOrFailure.fold(
        (failure) {
          providersState = providersState.copyWith(
            status: GameProvidersStateStatus.failed,
          );
        },
        (providers) {
          providersState = providersState.copyWith(
            status: GameProvidersStateStatus.success,
            providers: providers,
          );
        },
      );

      emit(state.copyWith(providersState: providersState));
    });

    on<_GetGames>((event, emit) async {
      GamesState gamesState = state.gamesState;
      gamesState = gamesState.copyWith(status: GamesStateStatus.loading);

      emit(state.copyWith(gamesState: gamesState));

      GameParam param = event.param;

      List<GameModel> currentGames = [];

      if (gamesState.param != null) {
        if (gamesState.param!.provider ==
                state.providersState.selectedProvider &&
            gamesState.param!.category ==
                state.categoriesState.selectedCategory) {
          param = gamesState.param!.copyWith(page: ++event.param.page);
          currentGames = List<GameModel>.from(gamesState.games);
        }
      }

      final dataOrFailure = await _getGamesUseCase(param);

      dataOrFailure.fold(
        (failure) {
          gamesState = gamesState.copyWith(status: GamesStateStatus.failed);
        },
        (games) {
          currentGames.addAll(games);
          gamesState = gamesState.copyWith(
            status: GamesStateStatus.success,
            games: currentGames,
          );
        },
      );

      emit(state.copyWith(gamesState: gamesState.copyWith(param: param)));
    });

    on<_SelectCategory>((event, emit) {
      GameCategoriesState categoriesState = state.categoriesState;
      categoriesState = categoriesState.copyWith(
        selectedCategory: event.category,
      );

      GamesState gameState = state.gamesState;

      GameProvidersState providersState = state.providersState;

      List<GameProviderModel> currentProviders = providersState.providers
          .where(
            (provider) => event.category.providers.containsKey(provider.name),
          )
          .toList();

      providersState = providersState.copyWith(
        selectedProvider: GameProviderModel(),
        currentProviders: currentProviders.map((e) {
          int count = event.category.providers[e.name] ?? 0;
          return e.copyWith(count: count);
        }).toList(),
      );

      emit(
        state.copyWith(
          categoriesState: categoriesState,
          providersState: providersState,
          gamesState: gameState.copyWith(
            currentTotalGames: event.category.count,
          ),
        ),
      );
    });

    on<_SelectProvider>((event, emit) {
      GameProvidersState providersState = state.providersState;
      providersState = providersState.copyWith(
        selectedProvider: event.provider,
      );
      emit(
        state.copyWith(
          providersState: providersState,
          gamesState: state.gamesState.copyWith(
            currentTotalGames: event.provider.count,
          ),
        ),
      );
    });
  }
}
