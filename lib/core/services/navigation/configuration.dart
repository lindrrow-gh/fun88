import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'observer.dart';
import 'routes.dart';

/// GoRouter Configuration
///
/// All GoRouter arguments will be added/modified here
///
class Configuration extends Routes {
  GoRouter get configuredRouter => GoRouter(
    observers: [GoRouterObserver()],
    routes: routes,
    redirect: (BuildContext context, GoRouterState state) {
      return null;
    },
  );
}
