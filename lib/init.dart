import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'core/services/clean_arch/dependency_injector/dependency_injector.dart';
import 'core/services/navigation/router.dart';

class Initializer {
  Future<void> init() async {
    AppRouter().init();
    DependencyInjector().init();
    await _blocHydrated();
  }

  Future<void> _blocHydrated() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorageDirectory.web
          : HydratedStorageDirectory((await getTemporaryDirectory()).path),
    );
  }
}
