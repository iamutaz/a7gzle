// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteState<$T>()';
}


}

/// @nodoc
class $FavoriteStateCopyWith<T,$Res>  {
$FavoriteStateCopyWith(FavoriteState<T> _, $Res Function(FavoriteState<T>) __);
}


/// Adds pattern-matching-related methods to [FavoriteState].
extension FavoriteStatePatterns<T> on FavoriteState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FavoriteInitial<T> value)?  favoriteinitial,TResult Function( FavoriteLoading<T> value)?  favoriteloading,TResult Function( FavoriteSuccess<T> value)?  favoritesuccess,TResult Function( FavoriteFailure<T> value)?  favoritefailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteInitial() when favoriteinitial != null:
return favoriteinitial(_that);case FavoriteLoading() when favoriteloading != null:
return favoriteloading(_that);case FavoriteSuccess() when favoritesuccess != null:
return favoritesuccess(_that);case FavoriteFailure() when favoritefailure != null:
return favoritefailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FavoriteInitial<T> value)  favoriteinitial,required TResult Function( FavoriteLoading<T> value)  favoriteloading,required TResult Function( FavoriteSuccess<T> value)  favoritesuccess,required TResult Function( FavoriteFailure<T> value)  favoritefailure,}){
final _that = this;
switch (_that) {
case _FavoriteInitial():
return favoriteinitial(_that);case FavoriteLoading():
return favoriteloading(_that);case FavoriteSuccess():
return favoritesuccess(_that);case FavoriteFailure():
return favoritefailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FavoriteInitial<T> value)?  favoriteinitial,TResult? Function( FavoriteLoading<T> value)?  favoriteloading,TResult? Function( FavoriteSuccess<T> value)?  favoritesuccess,TResult? Function( FavoriteFailure<T> value)?  favoritefailure,}){
final _that = this;
switch (_that) {
case _FavoriteInitial() when favoriteinitial != null:
return favoriteinitial(_that);case FavoriteLoading() when favoriteloading != null:
return favoriteloading(_that);case FavoriteSuccess() when favoritesuccess != null:
return favoritesuccess(_that);case FavoriteFailure() when favoritefailure != null:
return favoritefailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  favoriteinitial,TResult Function()?  favoriteloading,TResult Function( T data)?  favoritesuccess,TResult Function( String error)?  favoritefailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteInitial() when favoriteinitial != null:
return favoriteinitial();case FavoriteLoading() when favoriteloading != null:
return favoriteloading();case FavoriteSuccess() when favoritesuccess != null:
return favoritesuccess(_that.data);case FavoriteFailure() when favoritefailure != null:
return favoritefailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  favoriteinitial,required TResult Function()  favoriteloading,required TResult Function( T data)  favoritesuccess,required TResult Function( String error)  favoritefailure,}) {final _that = this;
switch (_that) {
case _FavoriteInitial():
return favoriteinitial();case FavoriteLoading():
return favoriteloading();case FavoriteSuccess():
return favoritesuccess(_that.data);case FavoriteFailure():
return favoritefailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  favoriteinitial,TResult? Function()?  favoriteloading,TResult? Function( T data)?  favoritesuccess,TResult? Function( String error)?  favoritefailure,}) {final _that = this;
switch (_that) {
case _FavoriteInitial() when favoriteinitial != null:
return favoriteinitial();case FavoriteLoading() when favoriteloading != null:
return favoriteloading();case FavoriteSuccess() when favoritesuccess != null:
return favoritesuccess(_that.data);case FavoriteFailure() when favoritefailure != null:
return favoritefailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _FavoriteInitial<T> implements FavoriteState<T> {
  const _FavoriteInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteState<$T>.favoriteinitial()';
}


}




/// @nodoc


class FavoriteLoading<T> implements FavoriteState<T> {
  const FavoriteLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoriteState<$T>.favoriteloading()';
}


}




/// @nodoc


class FavoriteSuccess<T> implements FavoriteState<T> {
  const FavoriteSuccess(this.data);
  

 final  T data;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteSuccessCopyWith<T, FavoriteSuccess<T>> get copyWith => _$FavoriteSuccessCopyWithImpl<T, FavoriteSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FavoriteState<$T>.favoritesuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $FavoriteSuccessCopyWith<T,$Res> implements $FavoriteStateCopyWith<T, $Res> {
  factory $FavoriteSuccessCopyWith(FavoriteSuccess<T> value, $Res Function(FavoriteSuccess<T>) _then) = _$FavoriteSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$FavoriteSuccessCopyWithImpl<T,$Res>
    implements $FavoriteSuccessCopyWith<T, $Res> {
  _$FavoriteSuccessCopyWithImpl(this._self, this._then);

  final FavoriteSuccess<T> _self;
  final $Res Function(FavoriteSuccess<T>) _then;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(FavoriteSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class FavoriteFailure<T> implements FavoriteState<T> {
  const FavoriteFailure({required this.error});
  

 final  String error;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteFailureCopyWith<T, FavoriteFailure<T>> get copyWith => _$FavoriteFailureCopyWithImpl<T, FavoriteFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'FavoriteState<$T>.favoritefailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $FavoriteFailureCopyWith<T,$Res> implements $FavoriteStateCopyWith<T, $Res> {
  factory $FavoriteFailureCopyWith(FavoriteFailure<T> value, $Res Function(FavoriteFailure<T>) _then) = _$FavoriteFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$FavoriteFailureCopyWithImpl<T,$Res>
    implements $FavoriteFailureCopyWith<T, $Res> {
  _$FavoriteFailureCopyWithImpl(this._self, this._then);

  final FavoriteFailure<T> _self;
  final $Res Function(FavoriteFailure<T>) _then;

/// Create a copy of FavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(FavoriteFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
