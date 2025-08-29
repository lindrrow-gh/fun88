// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameModel {

 int get sequence; String? get article; String get id; String get name;@JsonKey(name: 'game_code') String get gameCode; List<String> get category;@JsonKey(name: 'category_id') List<String> get categoryId; String get imgURL; String get platform; String get platformIconDark; String get platformIconLight; dynamic get gameInfo;
/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameModelCopyWith<GameModel> get copyWith => _$GameModelCopyWithImpl<GameModel>(this as GameModel, _$identity);

  /// Serializes this GameModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameModel&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.article, article) || other.article == article)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.gameCode, gameCode) || other.gameCode == gameCode)&&const DeepCollectionEquality().equals(other.category, category)&&const DeepCollectionEquality().equals(other.categoryId, categoryId)&&(identical(other.imgURL, imgURL) || other.imgURL == imgURL)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.platformIconDark, platformIconDark) || other.platformIconDark == platformIconDark)&&(identical(other.platformIconLight, platformIconLight) || other.platformIconLight == platformIconLight)&&const DeepCollectionEquality().equals(other.gameInfo, gameInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sequence,article,id,name,gameCode,const DeepCollectionEquality().hash(category),const DeepCollectionEquality().hash(categoryId),imgURL,platform,platformIconDark,platformIconLight,const DeepCollectionEquality().hash(gameInfo));

@override
String toString() {
  return 'GameModel(sequence: $sequence, article: $article, id: $id, name: $name, gameCode: $gameCode, category: $category, categoryId: $categoryId, imgURL: $imgURL, platform: $platform, platformIconDark: $platformIconDark, platformIconLight: $platformIconLight, gameInfo: $gameInfo)';
}


}

/// @nodoc
abstract mixin class $GameModelCopyWith<$Res>  {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) _then) = _$GameModelCopyWithImpl;
@useResult
$Res call({
 int sequence, String? article, String id, String name,@JsonKey(name: 'game_code') String gameCode, List<String> category,@JsonKey(name: 'category_id') List<String> categoryId, String imgURL, String platform, String platformIconDark, String platformIconLight, dynamic gameInfo
});




}
/// @nodoc
class _$GameModelCopyWithImpl<$Res>
    implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._self, this._then);

  final GameModel _self;
  final $Res Function(GameModel) _then;

/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sequence = null,Object? article = freezed,Object? id = null,Object? name = null,Object? gameCode = null,Object? category = null,Object? categoryId = null,Object? imgURL = null,Object? platform = null,Object? platformIconDark = null,Object? platformIconLight = null,Object? gameInfo = freezed,}) {
  return _then(_self.copyWith(
sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,article: freezed == article ? _self.article : article // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gameCode: null == gameCode ? _self.gameCode : gameCode // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as List<String>,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as List<String>,imgURL: null == imgURL ? _self.imgURL : imgURL // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,platformIconDark: null == platformIconDark ? _self.platformIconDark : platformIconDark // ignore: cast_nullable_to_non_nullable
as String,platformIconLight: null == platformIconLight ? _self.platformIconLight : platformIconLight // ignore: cast_nullable_to_non_nullable
as String,gameInfo: freezed == gameInfo ? _self.gameInfo : gameInfo // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [GameModel].
extension GameModelPatterns on GameModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameModel value)  $default,){
final _that = this;
switch (_that) {
case _GameModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameModel value)?  $default,){
final _that = this;
switch (_that) {
case _GameModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int sequence,  String? article,  String id,  String name, @JsonKey(name: 'game_code')  String gameCode,  List<String> category, @JsonKey(name: 'category_id')  List<String> categoryId,  String imgURL,  String platform,  String platformIconDark,  String platformIconLight,  dynamic gameInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameModel() when $default != null:
return $default(_that.sequence,_that.article,_that.id,_that.name,_that.gameCode,_that.category,_that.categoryId,_that.imgURL,_that.platform,_that.platformIconDark,_that.platformIconLight,_that.gameInfo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int sequence,  String? article,  String id,  String name, @JsonKey(name: 'game_code')  String gameCode,  List<String> category, @JsonKey(name: 'category_id')  List<String> categoryId,  String imgURL,  String platform,  String platformIconDark,  String platformIconLight,  dynamic gameInfo)  $default,) {final _that = this;
switch (_that) {
case _GameModel():
return $default(_that.sequence,_that.article,_that.id,_that.name,_that.gameCode,_that.category,_that.categoryId,_that.imgURL,_that.platform,_that.platformIconDark,_that.platformIconLight,_that.gameInfo);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int sequence,  String? article,  String id,  String name, @JsonKey(name: 'game_code')  String gameCode,  List<String> category, @JsonKey(name: 'category_id')  List<String> categoryId,  String imgURL,  String platform,  String platformIconDark,  String platformIconLight,  dynamic gameInfo)?  $default,) {final _that = this;
switch (_that) {
case _GameModel() when $default != null:
return $default(_that.sequence,_that.article,_that.id,_that.name,_that.gameCode,_that.category,_that.categoryId,_that.imgURL,_that.platform,_that.platformIconDark,_that.platformIconLight,_that.gameInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameModel implements GameModel {
  const _GameModel({this.sequence = 0, this.article, this.id = '', this.name = '', @JsonKey(name: 'game_code') this.gameCode = '', final  List<String> category = const [], @JsonKey(name: 'category_id') final  List<String> categoryId = const [], this.imgURL = '', this.platform = '', this.platformIconDark = '', this.platformIconLight = '', this.gameInfo = ''}): _category = category,_categoryId = categoryId;
  factory _GameModel.fromJson(Map<String, dynamic> json) => _$GameModelFromJson(json);

@override@JsonKey() final  int sequence;
@override final  String? article;
@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'game_code') final  String gameCode;
 final  List<String> _category;
@override@JsonKey() List<String> get category {
  if (_category is EqualUnmodifiableListView) return _category;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_category);
}

 final  List<String> _categoryId;
@override@JsonKey(name: 'category_id') List<String> get categoryId {
  if (_categoryId is EqualUnmodifiableListView) return _categoryId;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryId);
}

@override@JsonKey() final  String imgURL;
@override@JsonKey() final  String platform;
@override@JsonKey() final  String platformIconDark;
@override@JsonKey() final  String platformIconLight;
@override@JsonKey() final  dynamic gameInfo;

/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameModelCopyWith<_GameModel> get copyWith => __$GameModelCopyWithImpl<_GameModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameModel&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.article, article) || other.article == article)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.gameCode, gameCode) || other.gameCode == gameCode)&&const DeepCollectionEquality().equals(other._category, _category)&&const DeepCollectionEquality().equals(other._categoryId, _categoryId)&&(identical(other.imgURL, imgURL) || other.imgURL == imgURL)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.platformIconDark, platformIconDark) || other.platformIconDark == platformIconDark)&&(identical(other.platformIconLight, platformIconLight) || other.platformIconLight == platformIconLight)&&const DeepCollectionEquality().equals(other.gameInfo, gameInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sequence,article,id,name,gameCode,const DeepCollectionEquality().hash(_category),const DeepCollectionEquality().hash(_categoryId),imgURL,platform,platformIconDark,platformIconLight,const DeepCollectionEquality().hash(gameInfo));

@override
String toString() {
  return 'GameModel(sequence: $sequence, article: $article, id: $id, name: $name, gameCode: $gameCode, category: $category, categoryId: $categoryId, imgURL: $imgURL, platform: $platform, platformIconDark: $platformIconDark, platformIconLight: $platformIconLight, gameInfo: $gameInfo)';
}


}

/// @nodoc
abstract mixin class _$GameModelCopyWith<$Res> implements $GameModelCopyWith<$Res> {
  factory _$GameModelCopyWith(_GameModel value, $Res Function(_GameModel) _then) = __$GameModelCopyWithImpl;
@override @useResult
$Res call({
 int sequence, String? article, String id, String name,@JsonKey(name: 'game_code') String gameCode, List<String> category,@JsonKey(name: 'category_id') List<String> categoryId, String imgURL, String platform, String platformIconDark, String platformIconLight, dynamic gameInfo
});




}
/// @nodoc
class __$GameModelCopyWithImpl<$Res>
    implements _$GameModelCopyWith<$Res> {
  __$GameModelCopyWithImpl(this._self, this._then);

  final _GameModel _self;
  final $Res Function(_GameModel) _then;

/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sequence = null,Object? article = freezed,Object? id = null,Object? name = null,Object? gameCode = null,Object? category = null,Object? categoryId = null,Object? imgURL = null,Object? platform = null,Object? platformIconDark = null,Object? platformIconLight = null,Object? gameInfo = freezed,}) {
  return _then(_GameModel(
sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,article: freezed == article ? _self.article : article // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gameCode: null == gameCode ? _self.gameCode : gameCode // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self._category : category // ignore: cast_nullable_to_non_nullable
as List<String>,categoryId: null == categoryId ? _self._categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as List<String>,imgURL: null == imgURL ? _self.imgURL : imgURL // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as String,platformIconDark: null == platformIconDark ? _self.platformIconDark : platformIconDark // ignore: cast_nullable_to_non_nullable
as String,platformIconLight: null == platformIconLight ? _self.platformIconLight : platformIconLight // ignore: cast_nullable_to_non_nullable
as String,gameInfo: freezed == gameInfo ? _self.gameInfo : gameInfo // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
