// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetFavoriteState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFavoriteState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetFavoriteState<$T>()';
}


}

/// @nodoc
class $GetFavoriteStateCopyWith<T,$Res>  {
$GetFavoriteStateCopyWith(GetFavoriteState<T> _, $Res Function(GetFavoriteState<T>) __);
}


/// Adds pattern-matching-related methods to [GetFavoriteState].
extension GetFavoriteStatePatterns<T> on GetFavoriteState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetFavoriteInitial<T> value)?  getfavoriteinitial,TResult Function( GetFavoriteLoading<T> value)?  getfavoriteloading,TResult Function( GetFavoriteSuccess<T> value)?  getfavoritessuccess,TResult Function( GetFavoriteFailure<T> value)?  getfavoritefailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetFavoriteInitial() when getfavoriteinitial != null:
return getfavoriteinitial(_that);case GetFavoriteLoading() when getfavoriteloading != null:
return getfavoriteloading(_that);case GetFavoriteSuccess() when getfavoritessuccess != null:
return getfavoritessuccess(_that);case GetFavoriteFailure() when getfavoritefailure != null:
return getfavoritefailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetFavoriteInitial<T> value)  getfavoriteinitial,required TResult Function( GetFavoriteLoading<T> value)  getfavoriteloading,required TResult Function( GetFavoriteSuccess<T> value)  getfavoritessuccess,required TResult Function( GetFavoriteFailure<T> value)  getfavoritefailure,}){
final _that = this;
switch (_that) {
case _GetFavoriteInitial():
return getfavoriteinitial(_that);case GetFavoriteLoading():
return getfavoriteloading(_that);case GetFavoriteSuccess():
return getfavoritessuccess(_that);case GetFavoriteFailure():
return getfavoritefailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetFavoriteInitial<T> value)?  getfavoriteinitial,TResult? Function( GetFavoriteLoading<T> value)?  getfavoriteloading,TResult? Function( GetFavoriteSuccess<T> value)?  getfavoritessuccess,TResult? Function( GetFavoriteFailure<T> value)?  getfavoritefailure,}){
final _that = this;
switch (_that) {
case _GetFavoriteInitial() when getfavoriteinitial != null:
return getfavoriteinitial(_that);case GetFavoriteLoading() when getfavoriteloading != null:
return getfavoriteloading(_that);case GetFavoriteSuccess() when getfavoritessuccess != null:
return getfavoritessuccess(_that);case GetFavoriteFailure() when getfavoritefailure != null:
return getfavoritefailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getfavoriteinitial,TResult Function()?  getfavoriteloading,TResult Function( T data)?  getfavoritessuccess,TResult Function( String error)?  getfavoritefailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetFavoriteInitial() when getfavoriteinitial != null:
return getfavoriteinitial();case GetFavoriteLoading() when getfavoriteloading != null:
return getfavoriteloading();case GetFavoriteSuccess() when getfavoritessuccess != null:
return getfavoritessuccess(_that.data);case GetFavoriteFailure() when getfavoritefailure != null:
return getfavoritefailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getfavoriteinitial,required TResult Function()  getfavoriteloading,required TResult Function( T data)  getfavoritessuccess,required TResult Function( String error)  getfavoritefailure,}) {final _that = this;
switch (_that) {
case _GetFavoriteInitial():
return getfavoriteinitial();case GetFavoriteLoading():
return getfavoriteloading();case GetFavoriteSuccess():
return getfavoritessuccess(_that.data);case GetFavoriteFailure():
return getfavoritefailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getfavoriteinitial,TResult? Function()?  getfavoriteloading,TResult? Function( T data)?  getfavoritessuccess,TResult? Function( String error)?  getfavoritefailure,}) {final _that = this;
switch (_that) {
case _GetFavoriteInitial() when getfavoriteinitial != null:
return getfavoriteinitial();case GetFavoriteLoading() when getfavoriteloading != null:
return getfavoriteloading();case GetFavoriteSuccess() when getfavoritessuccess != null:
return getfavoritessuccess(_that.data);case GetFavoriteFailure() when getfavoritefailure != null:
return getfavoritefailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _GetFavoriteInitial<T> implements GetFavoriteState<T> {
  const _GetFavoriteInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFavoriteInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetFavoriteState<$T>.getfavoriteinitial()';
}


}




/// @nodoc


class GetFavoriteLoading<T> implements GetFavoriteState<T> {
  const GetFavoriteLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFavoriteLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetFavoriteState<$T>.getfavoriteloading()';
}


}




/// @nodoc


class GetFavoriteSuccess<T> implements GetFavoriteState<T> {
  const GetFavoriteSuccess(this.data);
  

 final  T data;

/// Create a copy of GetFavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFavoriteSuccessCopyWith<T, GetFavoriteSuccess<T>> get copyWith => _$GetFavoriteSuccessCopyWithImpl<T, GetFavoriteSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFavoriteSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetFavoriteState<$T>.getfavoritessuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $GetFavoriteSuccessCopyWith<T,$Res> implements $GetFavoriteStateCopyWith<T, $Res> {
  factory $GetFavoriteSuccessCopyWith(GetFavoriteSuccess<T> value, $Res Function(GetFavoriteSuccess<T>) _then) = _$GetFavoriteSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$GetFavoriteSuccessCopyWithImpl<T,$Res>
    implements $GetFavoriteSuccessCopyWith<T, $Res> {
  _$GetFavoriteSuccessCopyWithImpl(this._self, this._then);

  final GetFavoriteSuccess<T> _self;
  final $Res Function(GetFavoriteSuccess<T>) _then;

/// Create a copy of GetFavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(GetFavoriteSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class GetFavoriteFailure<T> implements GetFavoriteState<T> {
  const GetFavoriteFailure({required this.error});
  

 final  String error;

/// Create a copy of GetFavoriteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFavoriteFailureCopyWith<T, GetFavoriteFailure<T>> get copyWith => _$GetFavoriteFailureCopyWithImpl<T, GetFavoriteFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFavoriteFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'GetFavoriteState<$T>.getfavoritefailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $GetFavoriteFailureCopyWith<T,$Res> implements $GetFavoriteStateCopyWith<T, $Res> {
  factory $GetFavoriteFailureCopyWith(GetFavoriteFailure<T> value, $Res Function(GetFavoriteFailure<T>) _then) = _$GetFavoriteFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$GetFavoriteFailureCopyWithImpl<T,$Res>
    implements $GetFavoriteFailureCopyWith<T, $Res> {
  _$GetFavoriteFailureCopyWithImpl(this._self, this._then);

  final GetFavoriteFailure<T> _self;
  final $Res Function(GetFavoriteFailure<T>) _then;

/// Create a copy of GetFavoriteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(GetFavoriteFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
