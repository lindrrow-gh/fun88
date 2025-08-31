import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/double.dart';
import '../../../core/services/theme/bloc/theme_bloc.dart';
import '../../games/presentation/bloc/games/games_bloc.dart';

class CategoryContainer extends StatelessWidget {
  final int index;
  final GameCategoriesState state;

  const CategoryContainer({
    super.key,
    required this.index,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final category = state.categories[index];
    bool selected = category == state.selectedCategory;

    final themeState = context.watch<ThemeBloc>().state;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          context.read<GameBloc>().add(GameEvent.selectCategory(category));
        },
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: selected
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                    width: 2,
                  ),
                ),
              ),
              child: LayoutBuilder(builder: (context, constraints) {
                bool isFirstBreakPoint = constraints.maxWidth <= ConstantDouble.breakPointFirst;
                return selected
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.network(category.iconActive, width: 35),
                        Text(
                          category.category,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: isFirstBreakPoint ? 12 : 14,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.network(
                          themeState.isDarkMode
                              ? category.iconOff
                              : category.iconLight,
                          width: 35,
                        ),
                        Text(
                          category.category,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: isFirstBreakPoint ? 12 : 14,
                            color: Theme.of(
                              context,
                            ).colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ],
                    );
              }),
            ),
            if (selected)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  category.count.toString(),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
