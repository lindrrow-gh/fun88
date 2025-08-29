// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameProviderModel {

 String get name; String get iconDark; String get iconLight; int get count; dynamic get article;
/// Create a copy of GameProviderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameProviderModelCopyWith<GameProviderModel> get copyWith => _$GameProviderModelCopyWithImpl<GameProviderModel>(this as GameProviderModel, _$identity);

  /// Serializes this GameProviderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameProviderModel&&(identical(other.name, name) || other.name == name)&&(identical(other.iconDark, iconDark) || other.iconDark == iconDark)&&(identical(other.iconLight, iconLight) || other.iconLight == iconLight)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.article, article));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,iconDark,iconLight,count,const DeepCollectionEquality().hash(article));

@override
String toString() {
  return 'GameProviderModel(name: $name, iconDark: $iconDark, iconLight: $iconLight, count: $count, article: $article)';
}


}

/// @nodoc
abstract mixin class $GameProviderModelCopyWith<$Res>  {
  factory $GameProviderModelCopyWith(GameProviderModel value, $Res Function(GameProviderModel) _then) = _$GameProviderModelCopyWithImpl;
@useResult
$Res call({
 String name, String iconDark, String iconLight, int count, dynamic article
});




}
/// @nodoc
class _$GameProviderModelCopyWithImpl<$Res>
    implements $GameProviderModelCopyWith<$Res> {
  _$GameProviderModelCopyWithImpl(this._self, this._then);

  final GameProviderModel _self;
  final $Res Function(GameProviderModel) _then;

/// Create a copy of GameProviderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? iconDark = null,Object? iconLight = null,Object? count = null,Object? article = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconDark: null == iconDark ? _self.iconDark : iconDark // ignore: cast_nullable_to_non_nullable
as String,iconLight: null == iconLight ? _self.iconLight : iconLight // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,article: freezed == article ? _self.article : article // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [GameProviderModel].
extension GameProviderModelPatterns on GameProviderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameProviderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameProviderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameProviderModel value)  $default,){
final _that = this;
switch (_that) {
case _GameProviderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameProviderModel value)?  $default,){
final _that = this;
switch (_that) {
case _GameProviderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String iconDark,  String iconLight,  int count,  dynamic article)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameProviderModel() when $default != null:
return $default(_that.name,_that.iconDark,_that.iconLight,_that.count,_that.article);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String iconDark,  String iconLight,  int count,  dynamic article)  $default,) {final _that = this;
switch (_that) {
case _GameProviderModel():
return $default(_that.name,_that.iconDark,_that.iconLight,_that.count,_that.article);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String iconDark,  String iconLight,  int count,  dynamic article)?  $default,) {final _that = this;
switch (_that) {
case _GameProviderModel() when $default != null:
return $default(_that.name,_that.iconDark,_that.iconLight,_that.count,_that.article);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameProviderModel implements GameProviderModel {
  const _GameProviderModel({this.name = '', this.iconDark = '', this.iconLight = '', this.count = 0, this.article = ''});
  factory _GameProviderModel.fromJson(Map<String, dynamic> json) => _$GameProviderModelFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  String iconDark;
@override@JsonKey() final  String iconLight;
@override@JsonKey() final  int count;
@override@JsonKey() final  dynamic article;

/// Create a copy of GameProviderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameProviderModelCopyWith<_GameProviderModel> get copyWith => __$GameProviderModelCopyWithImpl<_GameProviderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameProviderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameProviderModel&&(identical(other.name, name) || other.name == name)&&(identical(other.iconDark, iconDark) || other.iconDark == iconDark)&&(identical(other.iconLight, iconLight) || other.iconLight == iconLight)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.article, article));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,iconDark,iconLight,count,const DeepCollectionEquality().hash(article));

@override
String toString() {
  return 'GameProviderModel(name: $name, iconDark: $iconDark, iconLight: $iconLight, count: $count, article: $article)';
}


}

/// @nodoc
abstract mixin class _$GameProviderModelCopyWith<$Res> implements $GameProviderModelCopyWith<$Res> {
  factory _$GameProviderModelCopyWith(_GameProviderModel value, $Res Function(_GameProviderModel) _then) = __$GameProviderModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String iconDark, String iconLight, int count, dynamic article
});




}
/// @nodoc
class __$GameProviderModelCopyWithImpl<$Res>
    implements _$GameProviderModelCopyWith<$Res> {
  __$GameProviderModelCopyWithImpl(this._self, this._then);

  final _GameProviderModel _self;
  final $Res Function(_GameProviderModel) _then;

/// Create a copy of GameProviderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? iconDark = null,Object? iconLight = null,Object? count = null,Object? article = freezed,}) {
  return _then(_GameProviderModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,iconDark: null == iconDark ? _self.iconDark : iconDark // ignore: cast_nullable_to_non_nullable
as String,iconLight: null == iconLight ? _self.iconLight : iconLight // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,article: freezed == article ? _self.article : article // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
