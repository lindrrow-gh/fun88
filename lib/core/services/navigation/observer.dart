import 'package:flutter/material.dart';
import '../log/log.dart';

class GoRouterObserver extends NavigatorObserver {
  final _log = AppLogger('AppRouteObserver');

  @override
  void didChangeTop(Route topRoute, Route? previousTopRoute) {
    _log.t({
      'didChangeTop' : {
        'topRoute': topRoute,
        'previousTopRoute': previousTopRoute
      }
    });
    super.didChangeTop(topRoute, previousTopRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    _log.t({
      'didPop' : {
        'route': route,
        'previousRoute': previousRoute
      }
    });
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    _log.t({
      'didPush' : {
        'route': route,
        'previousRoute': previousRoute
      }
    });
    super.didPush(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    _log.t({
      'didRemove' : {
        'route': route,
        'previousRoute': previousRoute
      }
    });
    super.didRemove(route, previousRoute);
  }
  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    _log.t({
      'didReplace' : {
        'newRoute': newRoute,
        'oldRoute': oldRoute
      }
    });
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    _log.t({
      'didStartUserGesture' : {
        'route': route,
        'previousRoute': previousRoute
      }
    });
    super.didStartUserGesture(route, previousRoute);
  }

  @override
  void didStopUserGesture() {
    _log.t('didStopUserGesture');
    super.didStopUserGesture();
  }

}