// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameCategoryModel _$GameCategoryModelFromJson(Map<String, dynamic> json) =>
    _GameCategoryModel(
      id: json['id'] as String? ?? '',
      category: json['category'] as String? ?? '',
      iconActive: json['icon_active'] as String? ?? '',
      iconOff: json['icon_off'] as String? ?? '',
      iconLight: json['icon_light'] as String? ?? '',
      providers:
          (json['providers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
      count: (json['count'] as num?)?.toInt() ?? 0,
      article: json['article'] ?? '',
    );

Map<String, dynamic> _$GameCategoryModelToJson(_GameCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'icon_active': instance.iconActive,
      'icon_off': instance.iconOff,
      'icon_light': instance.iconLight,
      'providers': instance.providers,
      'count': instance.count,
      'article': instance.article,
    };
