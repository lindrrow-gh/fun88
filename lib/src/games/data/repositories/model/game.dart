// https://sfgdefe0923.fun88adrods.online/mexicopwa/games/categories.php?account=

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
abstract class GameModel with _$GameModel {
  const factory GameModel({
    @Default(0) int sequence,
    String? article,
    @Default('') String id,
    @Default('') String name,
    @JsonKey(name: 'game_code') @Default('') String gameCode,
    @Default([]) List<String> category,
    @JsonKey(name: 'category_id') @Default([]) List<String> categoryId,
    @Default('') String imgURL,
    @Default('') String platform,
    @Default('') String platformIconDark,
    @Default('') String platformIconLight,
    @Default('') dynamic gameInfo,
  }) = _GameModel;

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
}
