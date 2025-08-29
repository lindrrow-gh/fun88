import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
abstract class GameCategoryModel with _$GameCategoryModel {
  const factory GameCategoryModel({
    @Default('') String id,
    @Default('') String category,
    @JsonKey(name: 'icon_active') @Default('') String iconActive,
    @JsonKey(name: 'icon_off') @Default('') String iconOff,
    @JsonKey(name: 'icon_light') @Default('') String iconLight,
    @Default({}) Map<String, int> providers,
    @Default(0) int count,
    @Default('') dynamic article,
  }) = _GameCategoryModel;

  factory GameCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$GameCategoryModelFromJson(json);
}
