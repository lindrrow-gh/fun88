// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'games_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameState {

 GamesState get gamesState; GameCategoriesState get categoriesState; GameProvidersState get providersState;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&(identical(other.gamesState, gamesState) || other.gamesState == gamesState)&&(identical(other.categoriesState, categoriesState) || other.categoriesState == categoriesState)&&(identical(other.providersState, providersState) || other.providersState == providersState));
}


@override
int get hashCode => Object.hash(runtimeType,gamesState,categoriesState,providersState);

@override
String toString() {
  return 'GameState(gamesState: $gamesState, categoriesState: $categoriesState, providersState: $providersState)';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 GamesState gamesState, GameCategoriesState categoriesState, GameProvidersState providersState
});


$GamesStateCopyWith<$Res> get gamesState;$GameCategoriesStateCopyWith<$Res> get categoriesState;$GameProvidersStateCopyWith<$Res> get providersState;

}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gamesState = null,Object? categoriesState = null,Object? providersState = null,}) {
  return _then(_self.copyWith(
gamesState: null == gamesState ? _self.gamesState : gamesState // ignore: cast_nullable_to_non_nullable
as GamesState,categoriesState: null == categoriesState ? _self.categoriesState : categoriesState // ignore: cast_nullable_to_non_nullable
as GameCategoriesState,providersState: null == providersState ? _self.providersState : providersState // ignore: cast_nullable_to_non_nullable
as GameProvidersState,
  ));
}
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GamesStateCopyWith<$Res> get gamesState {
  
  return $GamesStateCopyWith<$Res>(_self.gamesState, (value) {
    return _then(_self.copyWith(gamesState: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameCategoriesStateCopyWith<$Res> get categoriesState {
  
  return $GameCategoriesStateCopyWith<$Res>(_self.categoriesState, (value) {
    return _then(_self.copyWith(categoriesState: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameProvidersStateCopyWith<$Res> get providersState {
  
  return $GameProvidersStateCopyWith<$Res>(_self.providersState, (value) {
    return _then(_self.copyWith(providersState: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameState].
extension GameStatePatterns on GameState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameState value)  $default,){
final _that = this;
switch (_that) {
case _GameState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameState value)?  $default,){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GamesState gamesState,  GameCategoriesState categoriesState,  GameProvidersState providersState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.gamesState,_that.categoriesState,_that.providersState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GamesState gamesState,  GameCategoriesState categoriesState,  GameProvidersState providersState)  $default,) {final _that = this;
switch (_that) {
case _GameState():
return $default(_that.gamesState,_that.categoriesState,_that.providersState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GamesState gamesState,  GameCategoriesState categoriesState,  GameProvidersState providersState)?  $default,) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.gamesState,_that.categoriesState,_that.providersState);case _:
  return null;

}
}

}

/// @nodoc


class _GameState implements GameState {
  const _GameState({this.gamesState = const GamesState(), this.categoriesState = const GameCategoriesState(), this.providersState = const GameProvidersState()});
  

@override@JsonKey() final  GamesState gamesState;
@override@JsonKey() final  GameCategoriesState categoriesState;
@override@JsonKey() final  GameProvidersState providersState;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateCopyWith<_GameState> get copyWith => __$GameStateCopyWithImpl<_GameState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameState&&(identical(other.gamesState, gamesState) || other.gamesState == gamesState)&&(identical(other.categoriesState, categoriesState) || other.categoriesState == categoriesState)&&(identical(other.providersState, providersState) || other.providersState == providersState));
}


@override
int get hashCode => Object.hash(runtimeType,gamesState,categoriesState,providersState);

@override
String toString() {
  return 'GameState(gamesState: $gamesState, categoriesState: $categoriesState, providersState: $providersState)';
}


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;
@override @useResult
$Res call({
 GamesState gamesState, GameCategoriesState categoriesState, GameProvidersState providersState
});


@override $GamesStateCopyWith<$Res> get gamesState;@override $GameCategoriesStateCopyWith<$Res> get categoriesState;@override $GameProvidersStateCopyWith<$Res> get providersState;

}
/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gamesState = null,Object? categoriesState = null,Object? providersState = null,}) {
  return _then(_GameState(
gamesState: null == gamesState ? _self.gamesState : gamesState // ignore: cast_nullable_to_non_nullable
as GamesState,categoriesState: null == categoriesState ? _self.categoriesState : categoriesState // ignore: cast_nullable_to_non_nullable
as GameCategoriesState,providersState: null == providersState ? _self.providersState : providersState // ignore: cast_nullable_to_non_nullable
as GameProvidersState,
  ));
}

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GamesStateCopyWith<$Res> get gamesState {
  
  return $GamesStateCopyWith<$Res>(_self.gamesState, (value) {
    return _then(_self.copyWith(gamesState: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameCategoriesStateCopyWith<$Res> get categoriesState {
  
  return $GameCategoriesStateCopyWith<$Res>(_self.categoriesState, (value) {
    return _then(_self.copyWith(categoriesState: value));
  });
}/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameProvidersStateCopyWith<$Res> get providersState {
  
  return $GameProvidersStateCopyWith<$Res>(_self.providersState, (value) {
    return _then(_self.copyWith(providersState: value));
  });
}
}

/// @nodoc
mixin _$GamesState {

 GamesStateStatus get status; List<GameModel> get games; int get currentTotalGames; GameParam? get param; String get eventMessage;
/// Create a copy of GamesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GamesStateCopyWith<GamesState> get copyWith => _$GamesStateCopyWithImpl<GamesState>(this as GamesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GamesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.games, games)&&(identical(other.currentTotalGames, currentTotalGames) || other.currentTotalGames == currentTotalGames)&&(identical(other.param, param) || other.param == param)&&(identical(other.eventMessage, eventMessage) || other.eventMessage == eventMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(games),currentTotalGames,param,eventMessage);

@override
String toString() {
  return 'GamesState(status: $status, games: $games, currentTotalGames: $currentTotalGames, param: $param, eventMessage: $eventMessage)';
}


}

/// @nodoc
abstract mixin class $GamesStateCopyWith<$Res>  {
  factory $GamesStateCopyWith(GamesState value, $Res Function(GamesState) _then) = _$GamesStateCopyWithImpl;
@useResult
$Res call({
 GamesStateStatus status, List<GameModel> games, int currentTotalGames, GameParam? param, String eventMessage
});




}
/// @nodoc
class _$GamesStateCopyWithImpl<$Res>
    implements $GamesStateCopyWith<$Res> {
  _$GamesStateCopyWithImpl(this._self, this._then);

  final GamesState _self;
  final $Res Function(GamesState) _then;

/// Create a copy of GamesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? games = null,Object? currentTotalGames = null,Object? param = freezed,Object? eventMessage = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GamesStateStatus,games: null == games ? _self.games : games // ignore: cast_nullable_to_non_nullable
as List<GameModel>,currentTotalGames: null == currentTotalGames ? _self.currentTotalGames : currentTotalGames // ignore: cast_nullable_to_non_nullable
as int,param: freezed == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as GameParam?,eventMessage: null == eventMessage ? _self.eventMessage : eventMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GamesState].
extension GamesStatePatterns on GamesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GamesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GamesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GamesState value)  $default,){
final _that = this;
switch (_that) {
case _GamesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GamesState value)?  $default,){
final _that = this;
switch (_that) {
case _GamesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GamesStateStatus status,  List<GameModel> games,  int currentTotalGames,  GameParam? param,  String eventMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GamesState() when $default != null:
return $default(_that.status,_that.games,_that.currentTotalGames,_that.param,_that.eventMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GamesStateStatus status,  List<GameModel> games,  int currentTotalGames,  GameParam? param,  String eventMessage)  $default,) {final _that = this;
switch (_that) {
case _GamesState():
return $default(_that.status,_that.games,_that.currentTotalGames,_that.param,_that.eventMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GamesStateStatus status,  List<GameModel> games,  int currentTotalGames,  GameParam? param,  String eventMessage)?  $default,) {final _that = this;
switch (_that) {
case _GamesState() when $default != null:
return $default(_that.status,_that.games,_that.currentTotalGames,_that.param,_that.eventMessage);case _:
  return null;

}
}

}

/// @nodoc


class _GamesState implements GamesState {
  const _GamesState({this.status = GamesStateStatus.initial, final  List<GameModel> games = const [], this.currentTotalGames = 0, this.param, this.eventMessage = ''}): _games = games;
  

@override@JsonKey() final  GamesStateStatus status;
 final  List<GameModel> _games;
@override@JsonKey() List<GameModel> get games {
  if (_games is EqualUnmodifiableListView) return _games;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_games);
}

@override@JsonKey() final  int currentTotalGames;
@override final  GameParam? param;
@override@JsonKey() final  String eventMessage;

/// Create a copy of GamesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GamesStateCopyWith<_GamesState> get copyWith => __$GamesStateCopyWithImpl<_GamesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GamesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._games, _games)&&(identical(other.currentTotalGames, currentTotalGames) || other.currentTotalGames == currentTotalGames)&&(identical(other.param, param) || other.param == param)&&(identical(other.eventMessage, eventMessage) || other.eventMessage == eventMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_games),currentTotalGames,param,eventMessage);

@override
String toString() {
  return 'GamesState(status: $status, games: $games, currentTotalGames: $currentTotalGames, param: $param, eventMessage: $eventMessage)';
}


}

/// @nodoc
abstract mixin class _$GamesStateCopyWith<$Res> implements $GamesStateCopyWith<$Res> {
  factory _$GamesStateCopyWith(_GamesState value, $Res Function(_GamesState) _then) = __$GamesStateCopyWithImpl;
@override @useResult
$Res call({
 GamesStateStatus status, List<GameModel> games, int currentTotalGames, GameParam? param, String eventMessage
});




}
/// @nodoc
class __$GamesStateCopyWithImpl<$Res>
    implements _$GamesStateCopyWith<$Res> {
  __$GamesStateCopyWithImpl(this._self, this._then);

  final _GamesState _self;
  final $Res Function(_GamesState) _then;

/// Create a copy of GamesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? games = null,Object? currentTotalGames = null,Object? param = freezed,Object? eventMessage = null,}) {
  return _then(_GamesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GamesStateStatus,games: null == games ? _self._games : games // ignore: cast_nullable_to_non_nullable
as List<GameModel>,currentTotalGames: null == currentTotalGames ? _self.currentTotalGames : currentTotalGames // ignore: cast_nullable_to_non_nullable
as int,param: freezed == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as GameParam?,eventMessage: null == eventMessage ? _self.eventMessage : eventMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GameCategoriesState {

 GameCategoriesStateStatus get status; List<GameCategoryModel> get categories; GameCategoryModel get selectedCategory; String get eventMessage;
/// Create a copy of GameCategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameCategoriesStateCopyWith<GameCategoriesState> get copyWith => _$GameCategoriesStateCopyWithImpl<GameCategoriesState>(this as GameCategoriesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameCategoriesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.eventMessage, eventMessage) || other.eventMessage == eventMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(categories),selectedCategory,eventMessage);

@override
String toString() {
  return 'GameCategoriesState(status: $status, categories: $categories, selectedCategory: $selectedCategory, eventMessage: $eventMessage)';
}


}

/// @nodoc
abstract mixin class $GameCategoriesStateCopyWith<$Res>  {
  factory $GameCategoriesStateCopyWith(GameCategoriesState value, $Res Function(GameCategoriesState) _then) = _$GameCategoriesStateCopyWithImpl;
@useResult
$Res call({
 GameCategoriesStateStatus status, List<GameCategoryModel> categories, GameCategoryModel selectedCategory, String eventMessage
});


$GameCategoryModelCopyWith<$Res> get selectedCategory;

}
/// @nodoc
class _$GameCategoriesStateCopyWithImpl<$Res>
    implements $GameCategoriesStateCopyWith<$Res> {
  _$GameCategoriesStateCopyWithImpl(this._self, this._then);

  final GameCategoriesState _self;
  final $Res Function(GameCategoriesState) _then;

/// Create a copy of GameCategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? categories = null,Object? selectedCategory = null,Object? eventMessage = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GameCategoriesStateStatus,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<GameCategoryModel>,selectedCategory: null == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as GameCategoryModel,eventMessage: null == eventMessage ? _self.eventMessage : eventMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of GameCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameCategoryModelCopyWith<$Res> get selectedCategory {
  
  return $GameCategoryModelCopyWith<$Res>(_self.selectedCategory, (value) {
    return _then(_self.copyWith(selectedCategory: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameCategoriesState].
extension GameCategoriesStatePatterns on GameCategoriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameCategoriesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameCategoriesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameCategoriesState value)  $default,){
final _that = this;
switch (_that) {
case _GameCategoriesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameCategoriesState value)?  $default,){
final _that = this;
switch (_that) {
case _GameCategoriesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GameCategoriesStateStatus status,  List<GameCategoryModel> categories,  GameCategoryModel selectedCategory,  String eventMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameCategoriesState() when $default != null:
return $default(_that.status,_that.categories,_that.selectedCategory,_that.eventMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GameCategoriesStateStatus status,  List<GameCategoryModel> categories,  GameCategoryModel selectedCategory,  String eventMessage)  $default,) {final _that = this;
switch (_that) {
case _GameCategoriesState():
return $default(_that.status,_that.categories,_that.selectedCategory,_that.eventMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GameCategoriesStateStatus status,  List<GameCategoryModel> categories,  GameCategoryModel selectedCategory,  String eventMessage)?  $default,) {final _that = this;
switch (_that) {
case _GameCategoriesState() when $default != null:
return $default(_that.status,_that.categories,_that.selectedCategory,_that.eventMessage);case _:
  return null;

}
}

}

/// @nodoc


class _GameCategoriesState implements GameCategoriesState {
  const _GameCategoriesState({this.status = GameCategoriesStateStatus.initial, final  List<GameCategoryModel> categories = const [], this.selectedCategory = const GameCategoryModel(), this.eventMessage = ''}): _categories = categories;
  

@override@JsonKey() final  GameCategoriesStateStatus status;
 final  List<GameCategoryModel> _categories;
@override@JsonKey() List<GameCategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  GameCategoryModel selectedCategory;
@override@JsonKey() final  String eventMessage;

/// Create a copy of GameCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameCategoriesStateCopyWith<_GameCategoriesState> get copyWith => __$GameCategoriesStateCopyWithImpl<_GameCategoriesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameCategoriesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.eventMessage, eventMessage) || other.eventMessage == eventMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_categories),selectedCategory,eventMessage);

@override
String toString() {
  return 'GameCategoriesState(status: $status, categories: $categories, selectedCategory: $selectedCategory, eventMessage: $eventMessage)';
}


}

/// @nodoc
abstract mixin class _$GameCategoriesStateCopyWith<$Res> implements $GameCategoriesStateCopyWith<$Res> {
  factory _$GameCategoriesStateCopyWith(_GameCategoriesState value, $Res Function(_GameCategoriesState) _then) = __$GameCategoriesStateCopyWithImpl;
@override @useResult
$Res call({
 GameCategoriesStateStatus status, List<GameCategoryModel> categories, GameCategoryModel selectedCategory, String eventMessage
});


@override $GameCategoryModelCopyWith<$Res> get selectedCategory;

}
/// @nodoc
class __$GameCategoriesStateCopyWithImpl<$Res>
    implements _$GameCategoriesStateCopyWith<$Res> {
  __$GameCategoriesStateCopyWithImpl(this._self, this._then);

  final _GameCategoriesState _self;
  final $Res Function(_GameCategoriesState) _then;

/// Create a copy of GameCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? categories = null,Object? selectedCategory = null,Object? eventMessage = null,}) {
  return _then(_GameCategoriesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GameCategoriesStateStatus,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<GameCategoryModel>,selectedCategory: null == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as GameCategoryModel,eventMessage: null == eventMessage ? _self.eventMessage : eventMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of GameCategoriesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameCategoryModelCopyWith<$Res> get selectedCategory {
  
  return $GameCategoryModelCopyWith<$Res>(_self.selectedCategory, (value) {
    return _then(_self.copyWith(selectedCategory: value));
  });
}
}

/// @nodoc
mixin _$GameProvidersState {

 GameProvidersStateStatus get status; List<GameProviderModel> get providers; List<GameProviderModel> get currentProviders; GameProviderModel get selectedProvider; String get eventMessage;
/// Create a copy of GameProvidersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameProvidersStateCopyWith<GameProvidersState> get copyWith => _$GameProvidersStateCopyWithImpl<GameProvidersState>(this as GameProvidersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameProvidersState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.providers, providers)&&const DeepCollectionEquality().equals(other.currentProviders, currentProviders)&&(identical(other.selectedProvider, selectedProvider) || other.selectedProvider == selectedProvider)&&(identical(other.eventMessage, eventMessage) || other.eventMessage == eventMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(providers),const DeepCollectionEquality().hash(currentProviders),selectedProvider,eventMessage);

@override
String toString() {
  return 'GameProvidersState(status: $status, providers: $providers, currentProviders: $currentProviders, selectedProvider: $selectedProvider, eventMessage: $eventMessage)';
}


}

/// @nodoc
abstract mixin class $GameProvidersStateCopyWith<$Res>  {
  factory $GameProvidersStateCopyWith(GameProvidersState value, $Res Function(GameProvidersState) _then) = _$GameProvidersStateCopyWithImpl;
@useResult
$Res call({
 GameProvidersStateStatus status, List<GameProviderModel> providers, List<GameProviderModel> currentProviders, GameProviderModel selectedProvider, String eventMessage
});


$GameProviderModelCopyWith<$Res> get selectedProvider;

}
/// @nodoc
class _$GameProvidersStateCopyWithImpl<$Res>
    implements $GameProvidersStateCopyWith<$Res> {
  _$GameProvidersStateCopyWithImpl(this._self, this._then);

  final GameProvidersState _self;
  final $Res Function(GameProvidersState) _then;

/// Create a copy of GameProvidersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? providers = null,Object? currentProviders = null,Object? selectedProvider = null,Object? eventMessage = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GameProvidersStateStatus,providers: null == providers ? _self.providers : providers // ignore: cast_nullable_to_non_nullable
as List<GameProviderModel>,currentProviders: null == currentProviders ? _self.currentProviders : currentProviders // ignore: cast_nullable_to_non_nullable
as List<GameProviderModel>,selectedProvider: null == selectedProvider ? _self.selectedProvider : selectedProvider // ignore: cast_nullable_to_non_nullable
as GameProviderModel,eventMessage: null == eventMessage ? _self.eventMessage : eventMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of GameProvidersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameProviderModelCopyWith<$Res> get selectedProvider {
  
  return $GameProviderModelCopyWith<$Res>(_self.selectedProvider, (value) {
    return _then(_self.copyWith(selectedProvider: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameProvidersState].
extension GameProvidersStatePatterns on GameProvidersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameProvidersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameProvidersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameProvidersState value)  $default,){
final _that = this;
switch (_that) {
case _GameProvidersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameProvidersState value)?  $default,){
final _that = this;
switch (_that) {
case _GameProvidersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GameProvidersStateStatus status,  List<GameProviderModel> providers,  List<GameProviderModel> currentProviders,  GameProviderModel selectedProvider,  String eventMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameProvidersState() when $default != null:
return $default(_that.status,_that.providers,_that.currentProviders,_that.selectedProvider,_that.eventMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GameProvidersStateStatus status,  List<GameProviderModel> providers,  List<GameProviderModel> currentProviders,  GameProviderModel selectedProvider,  String eventMessage)  $default,) {final _that = this;
switch (_that) {
case _GameProvidersState():
return $default(_that.status,_that.providers,_that.currentProviders,_that.selectedProvider,_that.eventMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GameProvidersStateStatus status,  List<GameProviderModel> providers,  List<GameProviderModel> currentProviders,  GameProviderModel selectedProvider,  String eventMessage)?  $default,) {final _that = this;
switch (_that) {
case _GameProvidersState() when $default != null:
return $default(_that.status,_that.providers,_that.currentProviders,_that.selectedProvider,_that.eventMessage);case _:
  return null;

}
}

}

/// @nodoc


class _GameProvidersState implements GameProvidersState {
  const _GameProvidersState({this.status = GameProvidersStateStatus.initial, final  List<GameProviderModel> providers = const [], final  List<GameProviderModel> currentProviders = const [], this.selectedProvider = const GameProviderModel(), this.eventMessage = ''}): _providers = providers,_currentProviders = currentProviders;
  

@override@JsonKey() final  GameProvidersStateStatus status;
 final  List<GameProviderModel> _providers;
@override@JsonKey() List<GameProviderModel> get providers {
  if (_providers is EqualUnmodifiableListView) return _providers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_providers);
}

 final  List<GameProviderModel> _currentProviders;
@override@JsonKey() List<GameProviderModel> get currentProviders {
  if (_currentProviders is EqualUnmodifiableListView) return _currentProviders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currentProviders);
}

@override@JsonKey() final  GameProviderModel selectedProvider;
@override@JsonKey() final  String eventMessage;

/// Create a copy of GameProvidersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameProvidersStateCopyWith<_GameProvidersState> get copyWith => __$GameProvidersStateCopyWithImpl<_GameProvidersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameProvidersState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._providers, _providers)&&const DeepCollectionEquality().equals(other._currentProviders, _currentProviders)&&(identical(other.selectedProvider, selectedProvider) || other.selectedProvider == selectedProvider)&&(identical(other.eventMessage, eventMessage) || other.eventMessage == eventMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_providers),const DeepCollectionEquality().hash(_currentProviders),selectedProvider,eventMessage);

@override
String toString() {
  return 'GameProvidersState(status: $status, providers: $providers, currentProviders: $currentProviders, selectedProvider: $selectedProvider, eventMessage: $eventMessage)';
}


}

/// @nodoc
abstract mixin class _$GameProvidersStateCopyWith<$Res> implements $GameProvidersStateCopyWith<$Res> {
  factory _$GameProvidersStateCopyWith(_GameProvidersState value, $Res Function(_GameProvidersState) _then) = __$GameProvidersStateCopyWithImpl;
@override @useResult
$Res call({
 GameProvidersStateStatus status, List<GameProviderModel> providers, List<GameProviderModel> currentProviders, GameProviderModel selectedProvider, String eventMessage
});


@override $GameProviderModelCopyWith<$Res> get selectedProvider;

}
/// @nodoc
class __$GameProvidersStateCopyWithImpl<$Res>
    implements _$GameProvidersStateCopyWith<$Res> {
  __$GameProvidersStateCopyWithImpl(this._self, this._then);

  final _GameProvidersState _self;
  final $Res Function(_GameProvidersState) _then;

/// Create a copy of GameProvidersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? providers = null,Object? currentProviders = null,Object? selectedProvider = null,Object? eventMessage = null,}) {
  return _then(_GameProvidersState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GameProvidersStateStatus,providers: null == providers ? _self._providers : providers // ignore: cast_nullable_to_non_nullable
as List<GameProviderModel>,currentProviders: null == currentProviders ? _self._currentProviders : currentProviders // ignore: cast_nullable_to_non_nullable
as List<GameProviderModel>,selectedProvider: null == selectedProvider ? _self.selectedProvider : selectedProvider // ignore: cast_nullable_to_non_nullable
as GameProviderModel,eventMessage: null == eventMessage ? _self.eventMessage : eventMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of GameProvidersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameProviderModelCopyWith<$Res> get selectedProvider {
  
  return $GameProviderModelCopyWith<$Res>(_self.selectedProvider, (value) {
    return _then(_self.copyWith(selectedProvider: value));
  });
}
}

/// @nodoc
mixin _$GameEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent()';
}


}

/// @nodoc
class $GameEventCopyWith<$Res>  {
$GameEventCopyWith(GameEvent _, $Res Function(GameEvent) __);
}


/// Adds pattern-matching-related methods to [GameEvent].
extension GameEventPatterns on GameEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetGames value)?  getGames,TResult Function( _GetCategories value)?  getCategories,TResult Function( _GetProviders value)?  getProviders,TResult Function( _SelectCategory value)?  selectCategory,TResult Function( _SelectProvider value)?  selectProvider,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetGames() when getGames != null:
return getGames(_that);case _GetCategories() when getCategories != null:
return getCategories(_that);case _GetProviders() when getProviders != null:
return getProviders(_that);case _SelectCategory() when selectCategory != null:
return selectCategory(_that);case _SelectProvider() when selectProvider != null:
return selectProvider(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetGames value)  getGames,required TResult Function( _GetCategories value)  getCategories,required TResult Function( _GetProviders value)  getProviders,required TResult Function( _SelectCategory value)  selectCategory,required TResult Function( _SelectProvider value)  selectProvider,}){
final _that = this;
switch (_that) {
case _GetGames():
return getGames(_that);case _GetCategories():
return getCategories(_that);case _GetProviders():
return getProviders(_that);case _SelectCategory():
return selectCategory(_that);case _SelectProvider():
return selectProvider(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetGames value)?  getGames,TResult? Function( _GetCategories value)?  getCategories,TResult? Function( _GetProviders value)?  getProviders,TResult? Function( _SelectCategory value)?  selectCategory,TResult? Function( _SelectProvider value)?  selectProvider,}){
final _that = this;
switch (_that) {
case _GetGames() when getGames != null:
return getGames(_that);case _GetCategories() when getCategories != null:
return getCategories(_that);case _GetProviders() when getProviders != null:
return getProviders(_that);case _SelectCategory() when selectCategory != null:
return selectCategory(_that);case _SelectProvider() when selectProvider != null:
return selectProvider(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( GameParam param)?  getGames,TResult Function()?  getCategories,TResult Function()?  getProviders,TResult Function( GameCategoryModel category)?  selectCategory,TResult Function( GameProviderModel provider)?  selectProvider,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetGames() when getGames != null:
return getGames(_that.param);case _GetCategories() when getCategories != null:
return getCategories();case _GetProviders() when getProviders != null:
return getProviders();case _SelectCategory() when selectCategory != null:
return selectCategory(_that.category);case _SelectProvider() when selectProvider != null:
return selectProvider(_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( GameParam param)  getGames,required TResult Function()  getCategories,required TResult Function()  getProviders,required TResult Function( GameCategoryModel category)  selectCategory,required TResult Function( GameProviderModel provider)  selectProvider,}) {final _that = this;
switch (_that) {
case _GetGames():
return getGames(_that.param);case _GetCategories():
return getCategories();case _GetProviders():
return getProviders();case _SelectCategory():
return selectCategory(_that.category);case _SelectProvider():
return selectProvider(_that.provider);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( GameParam param)?  getGames,TResult? Function()?  getCategories,TResult? Function()?  getProviders,TResult? Function( GameCategoryModel category)?  selectCategory,TResult? Function( GameProviderModel provider)?  selectProvider,}) {final _that = this;
switch (_that) {
case _GetGames() when getGames != null:
return getGames(_that.param);case _GetCategories() when getCategories != null:
return getCategories();case _GetProviders() when getProviders != null:
return getProviders();case _SelectCategory() when selectCategory != null:
return selectCategory(_that.category);case _SelectProvider() when selectProvider != null:
return selectProvider(_that.provider);case _:
  return null;

}
}

}

/// @nodoc


class _GetGames implements GameEvent {
  const _GetGames(this.param);
  

 final  GameParam param;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGamesCopyWith<_GetGames> get copyWith => __$GetGamesCopyWithImpl<_GetGames>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGames&&(identical(other.param, param) || other.param == param));
}


@override
int get hashCode => Object.hash(runtimeType,param);

@override
String toString() {
  return 'GameEvent.getGames(param: $param)';
}


}

/// @nodoc
abstract mixin class _$GetGamesCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory _$GetGamesCopyWith(_GetGames value, $Res Function(_GetGames) _then) = __$GetGamesCopyWithImpl;
@useResult
$Res call({
 GameParam param
});




}
/// @nodoc
class __$GetGamesCopyWithImpl<$Res>
    implements _$GetGamesCopyWith<$Res> {
  __$GetGamesCopyWithImpl(this._self, this._then);

  final _GetGames _self;
  final $Res Function(_GetGames) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_GetGames(
null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as GameParam,
  ));
}


}

/// @nodoc


class _GetCategories implements GameEvent {
  const _GetCategories();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCategories);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.getCategories()';
}


}




/// @nodoc


class _GetProviders implements GameEvent {
  const _GetProviders();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProviders);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.getProviders()';
}


}




/// @nodoc


class _SelectCategory implements GameEvent {
  const _SelectCategory(this.category);
  

 final  GameCategoryModel category;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectCategoryCopyWith<_SelectCategory> get copyWith => __$SelectCategoryCopyWithImpl<_SelectCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectCategory&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'GameEvent.selectCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class _$SelectCategoryCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory _$SelectCategoryCopyWith(_SelectCategory value, $Res Function(_SelectCategory) _then) = __$SelectCategoryCopyWithImpl;
@useResult
$Res call({
 GameCategoryModel category
});


$GameCategoryModelCopyWith<$Res> get category;

}
/// @nodoc
class __$SelectCategoryCopyWithImpl<$Res>
    implements _$SelectCategoryCopyWith<$Res> {
  __$SelectCategoryCopyWithImpl(this._self, this._then);

  final _SelectCategory _self;
  final $Res Function(_SelectCategory) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(_SelectCategory(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as GameCategoryModel,
  ));
}

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameCategoryModelCopyWith<$Res> get category {
  
  return $GameCategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

/// @nodoc


class _SelectProvider implements GameEvent {
  const _SelectProvider(this.provider);
  

 final  GameProviderModel provider;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectProviderCopyWith<_SelectProvider> get copyWith => __$SelectProviderCopyWithImpl<_SelectProvider>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectProvider&&(identical(other.provider, provider) || other.provider == provider));
}


@override
int get hashCode => Object.hash(runtimeType,provider);

@override
String toString() {
  return 'GameEvent.selectProvider(provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$SelectProviderCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory _$SelectProviderCopyWith(_SelectProvider value, $Res Function(_SelectProvider) _then) = __$SelectProviderCopyWithImpl;
@useResult
$Res call({
 GameProviderModel provider
});


$GameProviderModelCopyWith<$Res> get provider;

}
/// @nodoc
class __$SelectProviderCopyWithImpl<$Res>
    implements _$SelectProviderCopyWith<$Res> {
  __$SelectProviderCopyWithImpl(this._self, this._then);

  final _SelectProvider _self;
  final $Res Function(_SelectProvider) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? provider = null,}) {
  return _then(_SelectProvider(
null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as GameProviderModel,
  ));
}

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameProviderModelCopyWith<$Res> get provider {
  
  return $GameProviderModelCopyWith<$Res>(_self.provider, (value) {
    return _then(_self.copyWith(provider: value));
  });
}
}

// dart format on
