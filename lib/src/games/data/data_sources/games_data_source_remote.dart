import 'dart:convert';

import 'package:dio/dio.dart';

import '../repositories/model/category.dart';
import '../repositories/model/game.dart';
import '../repositories/model/params.dart';
import '../repositories/model/provider.dart';
import 'games_data_source.dart';

class GamesRemoteDataSource extends GamesDataSource {
  @override
  Future<List<GameCategoryModel>> getGameCategories() async {
    Dio dio = Dio();
    var response = await dio.get(
      'https://sfgdefe0923.fun88adrods.online/mexicopwa/games/categories.php?account=',
    );

    int code = (response.statusCode ?? 400);

    if (code < 200 || code > 399) {
      Exception('Failed to load game categories');
    }

    var data = json.decode(response.data);

    return (data as List).map((e) {
      return GameCategoryModel.fromJson(e);
    }).toList();
  }

  @override
  Future<List<GameProviderModel>> getGameProviders() async {
    Dio dio = Dio();
    var response = await dio.get(
      'https://sfgdefe0923.fun88adrods.online/mexicopwa/games/lists.php?account=',
    );

    int code = (response.statusCode ?? 400);

    if (code < 200 || code > 399) {
      Exception('Failed to load game categories');
    }

    var data = json.decode(response.data);

    return (data['providers'] as Map).entries.map((e) {
      e.value["name"] = e.key;
      return GameProviderModel.fromJson(e.value);
    }).toList();
  }

  @override
  Future<List<GameModel>> getGames(GameParam param) async {
    Dio dio = Dio();
    var response = await dio.get(
      'https://sfgdefe0923.fun88adrods.online/mexicopwa/data/games_v2.php?category=${param.category.id}&provider=${param.provider.name}&account=&page=${param.page}',
    );

    int code = (response.statusCode ?? 400);

    if (code < 200 || code > 399) {
      Exception('Failed to load game categories');
    }

    var data = json.decode(response.data);

    //appLogger.i('GAMES RESPONSE PAGE ${param.page}: $data');

    return (data as List).map((e) {
      return GameModel.fromJson(e);
    }).toList();
  }
}
