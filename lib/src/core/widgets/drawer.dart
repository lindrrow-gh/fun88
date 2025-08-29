import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun88/core/constants/int.dart';
import 'package:fun88/core/services/theme/bloc/theme_bloc.dart';
import 'package:fun88/src/core/constants/games.dart';

import '../../../core/constants/string.dart';
import '../../../core/wigets/buttons.dart';

Drawer appDrawer(BuildContext context) {
  final themeBloc = context.watch<ThemeBloc>();

  return Drawer(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        _header(context, themeBloc),
        _Tiles(),
        Divider(),
        SizedBox(height: 30),
        _themeButtonDrawer(themeBloc),
      ],
    ),
  );
}

DrawerHeader _header(BuildContext context, ThemeBloc themeBloc) {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          ConstantString.bienvenido.toUpperCase(),
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppFilledButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(ConstantString.access.toUpperCase()),
                ),
              ),
              SizedBox(height: 10),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  ConstantString.register.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _Tiles extends StatefulWidget {
  const _Tiles({super.key});

  @override
  State<_Tiles> createState() => _TilesState();
}

class _TilesState extends State<_Tiles> {
  List<String> _openedKeys = [];

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;
    ThemeState themeState = context.watch<ThemeBloc>().state;

    bool isDarkMode = themeState.isDarkMode;

    return Column(
      children: ListTile.divideTiles(
        context: context,
        tiles: drawerItems.entries.map((tile) {
          if (tile.value.isEmpty) {
            return ListTile(
              title: Text(
                tile.key,
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              onTap: () {},
            );
          }

          return ExpansionTile(
            backgroundColor: Colors.grey.withAlpha(24),
            collapsedBackgroundColor: Colors.transparent,
            initiallyExpanded: _openedKeys.contains(tile.key),
            title: InkWell(
              splashColor: isDarkMode ? Colors.black : Colors.white,
              highlightColor: isDarkMode ? Colors.black : Colors.white,
              child: Text(
                tile.key,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  color: primaryColor,
                ),
              ),
            ),
            trailing: Icon(
              _openedKeys.contains(tile.key)
                  ? Icons.arrow_drop_up
                  : Icons.arrow_drop_down,
              size: 28,
              color: primaryColor,
            ),
            onExpansionChanged: (bool expanded) {
              setState(() {
                if (expanded) {
                  _openedKeys.add(tile.key);
                } else {
                  _openedKeys.remove(tile.key);
                }
              });
            },
            children: tile.value
                .map(
                  (value) => ListTile(
                    title: Text(
                      value,
                      style: TextStyle(fontSize: 16, color: primaryColor),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                )
                .toList(),
          );
        }),
      ).toList(),
    );
  }
}

Widget _themeButtonDrawer(ThemeBloc themeBloc) {
  Color forDark = themeBloc.state.isDarkMode
      ? Colors.white
      : Colors.black.withValues(alpha: 0.60);

  Color forLight = themeBloc.state.isDarkMode
      ? Colors.white.withValues(alpha: 0.60)
      : Colors.black;

  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: () {
        themeBloc.add(const ThemeEvent.toggle());
      },
      child: Center(
        child: Container(
          width: 224,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: themeBloc.state.isDarkMode
                ? Color(ConstantInt.dark)
                : Color(ConstantInt.light),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.dark_mode_outlined, color: forDark),
                    SizedBox(width: 4),
                    Text(
                      ConstantString.themeLight,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: forDark,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.light_mode_outlined, color: forLight),
                    SizedBox(width: 4),
                    Text(
                      ConstantString.themeDark,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: forLight,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
