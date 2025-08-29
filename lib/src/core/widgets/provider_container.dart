import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/int.dart';
import '../../../core/constants/string.dart';
import '../../../core/services/theme/bloc/theme_bloc.dart';
import '../../games/data/repositories/model/provider.dart';
import '../../games/presentation/bloc/games/games_bloc.dart';

class ProviderContainer extends StatelessWidget {
  final GameProviderModel provider;
  final double width;
  const ProviderContainer({
    super.key,
    required this.provider,
    required this.width,
  });

  Widget _image(themeState, BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: themeState.isDarkMode
            ? const Color(ConstantInt.dark)
            : const Color(ConstantInt.light),
        child: Image.network(
          themeState.isDarkMode ? provider.iconDark : provider.iconLight,
          fit: BoxFit.fitHeight,
          width: double.infinity,
          loadingBuilder: (context, child, progress) {
            if (progress == null) return child;
            return const Center(child: CircularProgressIndicator());
          },
          errorBuilder: (context, error, stackTrace) =>
              const Center(child: Icon(Icons.broken_image)),
        ),
      ),
    );
  }

  Widget _text(themeState, BuildContext context) {
    return Expanded(
      child: Container(
        color: themeState.isDarkMode
            ? const Color(ConstantInt.darkSecondary)
            : const Color(ConstantInt.lightSecondary),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              provider.name,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  provider.count.toString(),
                  style: TextStyle(
                    color: Theme.of(
                      context,
                    ).colorScheme.onPrimaryContainer.withAlpha(99),
                  ),
                ),
                Text(
                  " ${ConstantString.juegos.toUpperCase()}",
                  style: TextStyle(
                    color: Theme.of(
                      context,
                    ).colorScheme.onPrimaryContainer.withAlpha(99),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GameBloc>().state;
    final themeState = context.watch<ThemeBloc>().state;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          context.read<GameBloc>().add(GameEvent.selectProvider(provider));
        },
        child: Container(
          width: width,
          decoration: BoxDecoration(
            border: Border.all(
              color: state.providersState.selectedProvider == provider
                  ? Colors.blue
                  : Colors.transparent,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Column(
              children: [
                _image(themeState, context),
                _text(themeState, context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
