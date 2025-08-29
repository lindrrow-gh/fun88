import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

const _kFontFamily = 'Poppins';

final _kButtonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(6),
);

class AppTheme {
  static ThemeMode theme(state, context) {
    if (state.isDarkMode && true) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.light;
    }
  }

  static ThemeData dark(BuildContext context) {
    ThemeData theme = FlexThemeData.dark(scheme: FlexScheme.flutterDash);
    return _themeData(theme);
  }

  static ThemeData light(BuildContext context) {
    ThemeData theme = FlexThemeData.light(scheme: FlexScheme.flutterDash);
    return _themeData(theme);
  }
}

ThemeData _themeData(ThemeData theme) {
  TextTheme textTheme = ThemeData(fontFamily: _kFontFamily).textTheme;

  final filledButtonTheme = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      shape: _kButtonShape,
      padding: EdgeInsets.symmetric(horizontal: 10),
    ),
  );

  final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: _kButtonShape,
      padding: EdgeInsets.symmetric(horizontal: 10),
    ),
  );

  ThemeData themeData = theme.copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: textTheme,
    filledButtonTheme: filledButtonTheme,
    elevatedButtonTheme: elevatedButtonTheme,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: pageTransitionsBuilder,
    ),
  );

  return themeData;
}

Map<TargetPlatform, PageTransitionsBuilder> get pageTransitionsBuilder {
  return <TargetPlatform, PageTransitionsBuilder>{
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.fuchsia: FadeForwardsPageTransitionsBuilder(),
    TargetPlatform.linux: FadeForwardsPageTransitionsBuilder(),
    TargetPlatform.macOS: FadeForwardsPageTransitionsBuilder(),
    TargetPlatform.windows: FadeForwardsPageTransitionsBuilder(),
  };
}
