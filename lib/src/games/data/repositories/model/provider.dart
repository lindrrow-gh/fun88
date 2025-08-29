import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@freezed
abstract class GameProviderModel with _$GameProviderModel {
  const factory GameProviderModel({
    @Default('') String name,
    @Default('') String iconDark,
    @Default('') String iconLight,
    @Default(0) int count,
    @Default('') dynamic article,
  }) = _GameProviderModel;

  factory GameProviderModel.fromJson(Map<String, dynamic> json) =>
      _$GameProviderModelFromJson(json);
}
