import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/double.dart';
import '../../../../core/constants/int.dart';
import '../../../../core/constants/string.dart';
import '../../../../core/services/theme/bloc/theme_bloc.dart';
import '../../../../core/wigets/appbar.dart';
import '../../../../core/wigets/buttons.dart';
import '../../../core/constants/carausel.dart';
import '../../../core/constants/games.dart';
import '../../../core/widgets/category_carausel.dart';
import '../../../core/widgets/drawer.dart';
import '../../../core/widgets/provider_carausel.dart';
import '../../../core/widgets/games_grid.dart';
import '../../../core/widgets/image_carausel.dart';
import '../../data/repositories/model/params.dart';
import '../bloc/games/games_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _listeners({required Widget child}) {
    return MultiBlocListener(
      listeners: [
        BlocListener<GameBloc, GameState>(
          listenWhen: (previous, current) =>
              current.providersState.status ==
                  GameProvidersStateStatus.success &&
              current.categoriesState.selectedCategory.id.isEmpty,
          listener: (context, state) {
            if (state.categoriesState.categories.isNotEmpty) {
              context.read<GameBloc>().add(
                GameEvent.selectCategory(
                  state.categoriesState.categories.first,
                ),
              );
            }
          },
        ),
        BlocListener<GameBloc, GameState>(
          listenWhen: (previous, current) =>
              previous.categoriesState.selectedCategory !=
                  current.categoriesState.selectedCategory ||
              previous.providersState.selectedProvider !=
                  current.providersState.selectedProvider,
          listener: (context, state) {
            context.read<GameBloc>().add(
              GameEvent.getGames(
                GameParam(
                  category: state.categoriesState.selectedCategory,
                  provider: state.providersState.selectedProvider,
                ),
              ),
            );
          },
        ),
      ],
      child: child,
    );
  }

  Widget _appBar(BuildContext context) {
    return Appbar(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              if (constraints.maxWidth <= ConstantDouble.breakPointFirst) ...[
                IconButton(
                  icon: Icon(Icons.menu),
                  iconSize: 30,
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
                SizedBox(width: 10),
              ],
              Image.asset(
                ConstantAsset.logo,
                height: constraints.maxWidth < ConstantDouble.breakPointFirst
                    ? 16
                    : 22,
              ),
              if (constraints.maxWidth > ConstantDouble.breakPointFirst) ...[
                Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: appBarList
                        .map(
                          (item) => Text(
                            item,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
              Spacer(),
              AppFilledButton(
                onPressed: () {},
                child: Text(ConstantString.access.toUpperCase()),
              ),
              SizedBox(width: 8),
              AppFilledButton(
                color: Colors.green,
                onPressed: () {},
                child: Text(ConstantString.register.toUpperCase()),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _content() {
    return Expanded(
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            constraints: BoxConstraints(maxWidth: ConstantDouble.constraint),
            child: Column(
              children: [
                SizedBox(height: 20),
                ImageCarausel(networkImages: carauselImages),
                SizedBox(height: 20),
                const ProviderCarausel(),
                SizedBox(height: 20),
                const CategoryCarausel(),
                SizedBox(height: 10),
                const GamesGrid(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigation(BuildContext context, themeState) {
    int active = navigationItems.indexOf('Casino');
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= ConstantDouble.breakPointFirst) {
          return Appbar(
            isBottom: true,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: navigationItems
                  .map(
                    (item) => AppIconButton(
                      icon: Image.asset(
                        '${ConstantAsset.navigation}/${item.toLowerCase()}_${active == navigationItems.indexOf(item) ? 'active' : 'inactive'}.webp',
                        height: 25,
                      ),
                      label: Text(
                        item.toUpperCase(),
                        style: TextStyle(
                          fontSize: 10,
                          color: Theme.of(
                            context,
                          ).colorScheme.onPrimaryContainer,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
                  .toList(),
            ),
          );
        }

        return SizedBox.shrink();
      },
    );
  }

  _floatingActionButton(themeState) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > ConstantDouble.breakPointFirst) {
          return FloatingActionButton(
            backgroundColor: themeState.isDarkMode
                ? Color(ConstantInt.dark)
                : Color(ConstantInt.light),
            onPressed: () {
              context.read<ThemeBloc>().add(const ThemeEvent.toggle());
            },
            child: Icon(
              themeState.isDarkMode
                  ? Icons.nightlight_outlined
                  : Icons.light_mode_outlined,
            ),
          );
        }
        return SizedBox.shrink();

      },
    );
  }

  Widget _body(BuildContext context) {
    final themeState = context.watch<ThemeBloc>().state;
    return Scaffold(
      drawer: appDrawer(context),
      body: _listeners(
        child: Column(
          children: [
            _appBar(context),
            _content(),
            _bottomNavigation(context, themeState),
          ],
        ),
      ),
      floatingActionButton: _floatingActionButton(themeState),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameBloc()
        ..add(const GameEvent.getProviders())
        ..add(const GameEvent.getCategories()),
      child: _listeners(child: _body(context)),
    );
  }
}
