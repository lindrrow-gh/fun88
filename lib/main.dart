import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fun88/init.dart';

import 'core/services/navigation/router.dart';
import 'core/services/theme/bloc/theme_bloc.dart';
import 'core/services/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Initializer().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ThemeBloc())],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'FUN88',
            theme: AppTheme.light(context),
            darkTheme: AppTheme.dark(context),
            themeMode: AppTheme.theme(state, context),
            routerConfig: AppRouter().router,
          );
        },
      ),
    );
  }
}
