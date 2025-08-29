import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun88/core/services/extensions/double.dart';
import 'package:fun88/src/core/constants/games.dart';
import 'package:fun88/src/core/widgets/game_container.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/constants/double.dart';
import '../../../core/constants/string.dart';
import '../../games/presentation/bloc/games/games_bloc.dart';

class GamesGrid extends StatelessWidget {
  final int maxDisplay;
  final int minDisplay;

  const GamesGrid({super.key, this.maxDisplay = 5, this.minDisplay = 3});

  Widget _loadMoreGames(
    state,
    BuildContext context, {
    required VoidCallback onPressed,
  }) {

    double gamePercentage = (state.games.length / state.currentTotalGames);
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 50),
          Text(
            '${state.games.length} / ${state.currentTotalGames}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: 10,
                child: LinearProgressIndicator(value: gamePercentage),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  '${(gamePercentage * 100).toDecimalString()}%', // Display percentage
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    fontSize: 8,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          state.status == GamesStateStatus.loading
              ? Center(
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: CircularProgressIndicator(),
                  ),
                )
              : FilledButton(
                  onPressed: onPressed,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(ConstantString.loadMore),
                  ),
                ),
        ],
      ),
    );
  }

  Widget _games(toDisplay, state, isNotLimit) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: state.games.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: toDisplay,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final game = state.games[index];
        return GameContainer(game: game, isNotLimit: isNotLimit);
      },
    );
  }

  Widget _shimmer(toDisplay, state) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: state.games.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: toDisplay,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GameBloc, GameState, GamesState>(
      selector: (state) => state.gamesState,
      builder: (bContext, state) {
        return LayoutBuilder(
          builder: (lContext, constraints) {
            double width = constraints.maxWidth;
            int toDisplay = maxDisplay;
            bool isNotLimit = true;
            if (width <= ConstantDouble.breakPointFirst) {
              toDisplay = minDisplay;
              isNotLimit = false;
            }

            if (state.status == GamesStateStatus.loading &&
                (state.games.isEmpty || state.param?.page == 1)) {
              return _shimmer(toDisplay, state);
            }

            if (state.status == GamesStateStatus.success ||
                state.games.isNotEmpty) {
              return Column(
                children: [
                  _games(toDisplay, state, isNotLimit),
                  if (state.games.length / state.currentTotalGames < 1)
                    _loadMoreGames(
                      state,
                      context,
                      onPressed: () {
                        if (state.param != null) {
                          context.read<GameBloc>().add(
                            GameEvent.getGames(state.param!),
                          );
                        }
                      },
                    ),
                ],
              );
            }

            return Container();
          },
        );
      },
    );
  }
}
