// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameCategoryModel {

 String get id; String get category;@JsonKey(name: 'icon_active') String get iconActive;@JsonKey(name: 'icon_off') String get iconOff;@JsonKey(name: 'icon_light') String get iconLight; Map<String, int> get providers; int get count; dynamic get article;
/// Create a copy of GameCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameCategoryModelCopyWith<GameCategoryModel> get copyWith => _$GameCategoryModelCopyWithImpl<GameCategoryModel>(this as GameCategoryModel, _$identity);

  /// Serializes this GameCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.iconActive, iconActive) || other.iconActive == iconActive)&&(identical(other.iconOff, iconOff) || other.iconOff == iconOff)&&(identical(other.iconLight, iconLight) || other.iconLight == iconLight)&&const DeepCollectionEquality().equals(other.providers, providers)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.article, article));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,iconActive,iconOff,iconLight,const DeepCollectionEquality().hash(providers),count,const DeepCollectionEquality().hash(article));

@override
String toString() {
  return 'GameCategoryModel(id: $id, category: $category, iconActive: $iconActive, iconOff: $iconOff, iconLight: $iconLight, providers: $providers, count: $count, article: $article)';
}


}

/// @nodoc
abstract mixin class $GameCategoryModelCopyWith<$Res>  {
  factory $GameCategoryModelCopyWith(GameCategoryModel value, $Res Function(GameCategoryModel) _then) = _$GameCategoryModelCopyWithImpl;
@useResult
$Res call({
 String id, String category,@JsonKey(name: 'icon_active') String iconActive,@JsonKey(name: 'icon_off') String iconOff,@JsonKey(name: 'icon_light') String iconLight, Map<String, int> providers, int count, dynamic article
});




}
/// @nodoc
class _$GameCategoryModelCopyWithImpl<$Res>
    implements $GameCategoryModelCopyWith<$Res> {
  _$GameCategoryModelCopyWithImpl(this._self, this._then);

  final GameCategoryModel _self;
  final $Res Function(GameCategoryModel) _then;

/// Create a copy of GameCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? category = null,Object? iconActive = null,Object? iconOff = null,Object? iconLight = null,Object? providers = null,Object? count = null,Object? article = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,iconActive: null == iconActive ? _self.iconActive : iconActive // ignore: cast_nullable_to_non_nullable
as String,iconOff: null == iconOff ? _self.iconOff : iconOff // ignore: cast_nullable_to_non_nullable
as String,iconLight: null == iconLight ? _self.iconLight : iconLight // ignore: cast_nullable_to_non_nullable
as String,providers: null == providers ? _self.providers : providers // ignore: cast_nullable_to_non_nullable
as Map<String, int>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,article: freezed == article ? _self.article : article // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [GameCategoryModel].
extension GameCategoryModelPatterns on GameCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _GameCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _GameCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String category, @JsonKey(name: 'icon_active')  String iconActive, @JsonKey(name: 'icon_off')  String iconOff, @JsonKey(name: 'icon_light')  String iconLight,  Map<String, int> providers,  int count,  dynamic article)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameCategoryModel() when $default != null:
return $default(_that.id,_that.category,_that.iconActive,_that.iconOff,_that.iconLight,_that.providers,_that.count,_that.article);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String category, @JsonKey(name: 'icon_active')  String iconActive, @JsonKey(name: 'icon_off')  String iconOff, @JsonKey(name: 'icon_light')  String iconLight,  Map<String, int> providers,  int count,  dynamic article)  $default,) {final _that = this;
switch (_that) {
case _GameCategoryModel():
return $default(_that.id,_that.category,_that.iconActive,_that.iconOff,_that.iconLight,_that.providers,_that.count,_that.article);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String category, @JsonKey(name: 'icon_active')  String iconActive, @JsonKey(name: 'icon_off')  String iconOff, @JsonKey(name: 'icon_light')  String iconLight,  Map<String, int> providers,  int count,  dynamic article)?  $default,) {final _that = this;
switch (_that) {
case _GameCategoryModel() when $default != null:
return $default(_that.id,_that.category,_that.iconActive,_that.iconOff,_that.iconLight,_that.providers,_that.count,_that.article);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameCategoryModel implements GameCategoryModel {
  const _GameCategoryModel({this.id = '', this.category = '', @JsonKey(name: 'icon_active') this.iconActive = '', @JsonKey(name: 'icon_off') this.iconOff = '', @JsonKey(name: 'icon_light') this.iconLight = '', final  Map<String, int> providers = const {}, this.count = 0, this.article = ''}): _providers = providers;
  factory _GameCategoryModel.fromJson(Map<String, dynamic> json) => _$GameCategoryModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String category;
@override@JsonKey(name: 'icon_active') final  String iconActive;
@override@JsonKey(name: 'icon_off') final  String iconOff;
@override@JsonKey(name: 'icon_light') final  String iconLight;
 final  Map<String, int> _providers;
@override@JsonKey() Map<String, int> get providers {
  if (_providers is EqualUnmodifiableMapView) return _providers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_providers);
}

@override@JsonKey() final  int count;
@override@JsonKey() final  dynamic article;

/// Create a copy of GameCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameCategoryModelCopyWith<_GameCategoryModel> get copyWith => __$GameCategoryModelCopyWithImpl<_GameCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.category, category) || other.category == category)&&(identical(other.iconActive, iconActive) || other.iconActive == iconActive)&&(identical(other.iconOff, iconOff) || other.iconOff == iconOff)&&(identical(other.iconLight, iconLight) || other.iconLight == iconLight)&&const DeepCollectionEquality().equals(other._providers, _providers)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.article, article));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,category,iconActive,iconOff,iconLight,const DeepCollectionEquality().hash(_providers),count,const DeepCollectionEquality().hash(article));

@override
String toString() {
  return 'GameCategoryModel(id: $id, category: $category, iconActive: $iconActive, iconOff: $iconOff, iconLight: $iconLight, providers: $providers, count: $count, article: $article)';
}


}

/// @nodoc
abstract mixin class _$GameCategoryModelCopyWith<$Res> implements $GameCategoryModelCopyWith<$Res> {
  factory _$GameCategoryModelCopyWith(_GameCategoryModel value, $Res Function(_GameCategoryModel) _then) = __$GameCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String category,@JsonKey(name: 'icon_active') String iconActive,@JsonKey(name: 'icon_off') String iconOff,@JsonKey(name: 'icon_light') String iconLight, Map<String, int> providers, int count, dynamic article
});




}
/// @nodoc
class __$GameCategoryModelCopyWithImpl<$Res>
    implements _$GameCategoryModelCopyWith<$Res> {
  __$GameCategoryModelCopyWithImpl(this._self, this._then);

  final _GameCategoryModel _self;
  final $Res Function(_GameCategoryModel) _then;

/// Create a copy of GameCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? category = null,Object? iconActive = null,Object? iconOff = null,Object? iconLight = null,Object? providers = null,Object? count = null,Object? article = freezed,}) {
  return _then(_GameCategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,iconActive: null == iconActive ? _self.iconActive : iconActive // ignore: cast_nullable_to_non_nullable
as String,iconOff: null == iconOff ? _self.iconOff : iconOff // ignore: cast_nullable_to_non_nullable
as String,iconLight: null == iconLight ? _self.iconLight : iconLight // ignore: cast_nullable_to_non_nullable
as String,providers: null == providers ? _self._providers : providers // ignore: cast_nullable_to_non_nullable
as Map<String, int>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,article: freezed == article ? _self.article : article // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
