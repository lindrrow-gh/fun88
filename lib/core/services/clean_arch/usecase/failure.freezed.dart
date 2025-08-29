// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure {

 dynamic get exception;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&const DeepCollectionEquality().equals(other.exception, exception));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(exception));

@override
String toString() {
  return 'Failure(exception: $exception)';
}


}

/// @nodoc
class $FailureCopyWith<$Res>  {
$FailureCopyWith(Failure _, $Res Function(Failure) __);
}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LOCAL value)?  local,TResult Function( _API value)?  api,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LOCAL() when local != null:
return local(_that);case _API() when api != null:
return api(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LOCAL value)  local,required TResult Function( _API value)  api,}){
final _that = this;
switch (_that) {
case _LOCAL():
return local(_that);case _API():
return api(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LOCAL value)?  local,TResult? Function( _API value)?  api,}){
final _that = this;
switch (_that) {
case _LOCAL() when local != null:
return local(_that);case _API() when api != null:
return api(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( dynamic exception)?  local,TResult Function( DioException exception)?  api,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LOCAL() when local != null:
return local(_that.exception);case _API() when api != null:
return api(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( dynamic exception)  local,required TResult Function( DioException exception)  api,}) {final _that = this;
switch (_that) {
case _LOCAL():
return local(_that.exception);case _API():
return api(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( dynamic exception)?  local,TResult? Function( DioException exception)?  api,}) {final _that = this;
switch (_that) {
case _LOCAL() when local != null:
return local(_that.exception);case _API() when api != null:
return api(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _LOCAL implements Failure {
  const _LOCAL(this.exception);
  

@override final  dynamic exception;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LOCALCopyWith<_LOCAL> get copyWith => __$LOCALCopyWithImpl<_LOCAL>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LOCAL&&const DeepCollectionEquality().equals(other.exception, exception));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(exception));

@override
String toString() {
  return 'Failure.local(exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$LOCALCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$LOCALCopyWith(_LOCAL value, $Res Function(_LOCAL) _then) = __$LOCALCopyWithImpl;
@useResult
$Res call({
 dynamic exception
});




}
/// @nodoc
class __$LOCALCopyWithImpl<$Res>
    implements _$LOCALCopyWith<$Res> {
  __$LOCALCopyWithImpl(this._self, this._then);

  final _LOCAL _self;
  final $Res Function(_LOCAL) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(_LOCAL(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc


class _API implements Failure {
  const _API(this.exception);
  

@override final  DioException exception;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$APICopyWith<_API> get copyWith => __$APICopyWithImpl<_API>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _API&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'Failure.api(exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$APICopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$APICopyWith(_API value, $Res Function(_API) _then) = __$APICopyWithImpl;
@useResult
$Res call({
 DioException exception
});




}
/// @nodoc
class __$APICopyWithImpl<$Res>
    implements _$APICopyWith<$Res> {
  __$APICopyWithImpl(this._self, this._then);

  final _API _self;
  final $Res Function(_API) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(_API(
null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as DioException,
  ));
}


}

// dart format on
