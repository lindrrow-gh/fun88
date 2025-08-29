// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameModel _$GameModelFromJson(Map<String, dynamic> json) => _GameModel(
  sequence: (json['sequence'] as num?)?.toInt() ?? 0,
  article: json['article'] as String?,
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  gameCode: json['game_code'] as String? ?? '',
  category:
      (json['category'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  categoryId:
      (json['category_id'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  imgURL: json['imgURL'] as String? ?? '',
  platform: json['platform'] as String? ?? '',
  platformIconDark: json['platformIconDark'] as String? ?? '',
  platformIconLight: json['platformIconLight'] as String? ?? '',
  gameInfo: json['gameInfo'] ?? '',
);

Map<String, dynamic> _$GameModelToJson(_GameModel instance) =>
    <String, dynamic>{
      'sequence': instance.sequence,
      'article': instance.article,
      'id': instance.id,
      'name': instance.name,
      'game_code': instance.gameCode,
      'category': instance.category,
      'category_id': instance.categoryId,
      'imgURL': instance.imgURL,
      'platform': instance.platform,
      'platformIconDark': instance.platformIconDark,
      'platformIconLight': instance.platformIconLight,
      'gameInfo': instance.gameInfo,
    };
