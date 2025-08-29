import 'package:go_router/go_router.dart';

import 'configuration.dart';

/// App Router
///
class AppRouter {

  late GoRouter _router;

  GoRouter get router => _router;

  static final AppRouter _singleton = AppRouter._internal();

  factory AppRouter() {
    return _singleton;
  }

  AppRouter._internal();

  /// Initialize Go Router
  ///
  /// Assigns the pre-configured values to [_router]
  ///
  void init() {
    _router = _Configuration().configuredRouter;
  }
}

/// Privatize [Configuration] Class
///
/// To prevent the attributes and methods from being exposed
///
class _Configuration extends Configuration {}
