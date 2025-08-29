import 'package:go_router/go_router.dart';

import '../../../src/games/presentation/pages/home_page.dart';

/// GoRouter Routes
///
/// All module screen routes will be added here and screen routes of a module
///
class Routes {
  List<RouteBase> get routes => <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
    ),
  ];
}
