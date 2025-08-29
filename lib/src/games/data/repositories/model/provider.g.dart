// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameProviderModel _$GameProviderModelFromJson(Map<String, dynamic> json) =>
    _GameProviderModel(
      name: json['name'] as String? ?? '',
      iconDark: json['iconDark'] as String? ?? '',
      iconLight: json['iconLight'] as String? ?? '',
      count: (json['count'] as num?)?.toInt() ?? 0,
      article: json['article'] ?? '',
    );

Map<String, dynamic> _$GameProviderModelToJson(_GameProviderModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'iconDark': instance.iconDark,
      'iconLight': instance.iconLight,
      'count': instance.count,
      'article': instance.article,
    };
