// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handling_reservation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HandlingReservationState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandlingReservationState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HandlingReservationState<$T>()';
}


}

/// @nodoc
class $HandlingReservationStateCopyWith<T,$Res>  {
$HandlingReservationStateCopyWith(HandlingReservationState<T> _, $Res Function(HandlingReservationState<T>) __);
}


/// Adds pattern-matching-related methods to [HandlingReservationState].
extension HandlingReservationStatePatterns<T> on HandlingReservationState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HandlingReservationInitial<T> value)?  handlingreservationinitail,TResult Function( HandlingReservationLoading<T> value)?  handlingreservationloading,TResult Function( HandlingReservationSuccess<T> value)?  handlingreservationsuccess,TResult Function( HandlingReservationFailure<T> value)?  handlingreservationfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HandlingReservationInitial() when handlingreservationinitail != null:
return handlingreservationinitail(_that);case HandlingReservationLoading() when handlingreservationloading != null:
return handlingreservationloading(_that);case HandlingReservationSuccess() when handlingreservationsuccess != null:
return handlingreservationsuccess(_that);case HandlingReservationFailure() when handlingreservationfailure != null:
return handlingreservationfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HandlingReservationInitial<T> value)  handlingreservationinitail,required TResult Function( HandlingReservationLoading<T> value)  handlingreservationloading,required TResult Function( HandlingReservationSuccess<T> value)  handlingreservationsuccess,required TResult Function( HandlingReservationFailure<T> value)  handlingreservationfailure,}){
final _that = this;
switch (_that) {
case _HandlingReservationInitial():
return handlingreservationinitail(_that);case HandlingReservationLoading():
return handlingreservationloading(_that);case HandlingReservationSuccess():
return handlingreservationsuccess(_that);case HandlingReservationFailure():
return handlingreservationfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HandlingReservationInitial<T> value)?  handlingreservationinitail,TResult? Function( HandlingReservationLoading<T> value)?  handlingreservationloading,TResult? Function( HandlingReservationSuccess<T> value)?  handlingreservationsuccess,TResult? Function( HandlingReservationFailure<T> value)?  handlingreservationfailure,}){
final _that = this;
switch (_that) {
case _HandlingReservationInitial() when handlingreservationinitail != null:
return handlingreservationinitail(_that);case HandlingReservationLoading() when handlingreservationloading != null:
return handlingreservationloading(_that);case HandlingReservationSuccess() when handlingreservationsuccess != null:
return handlingreservationsuccess(_that);case HandlingReservationFailure() when handlingreservationfailure != null:
return handlingreservationfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  handlingreservationinitail,TResult Function()?  handlingreservationloading,TResult Function( T data)?  handlingreservationsuccess,TResult Function( String error)?  handlingreservationfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HandlingReservationInitial() when handlingreservationinitail != null:
return handlingreservationinitail();case HandlingReservationLoading() when handlingreservationloading != null:
return handlingreservationloading();case HandlingReservationSuccess() when handlingreservationsuccess != null:
return handlingreservationsuccess(_that.data);case HandlingReservationFailure() when handlingreservationfailure != null:
return handlingreservationfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  handlingreservationinitail,required TResult Function()  handlingreservationloading,required TResult Function( T data)  handlingreservationsuccess,required TResult Function( String error)  handlingreservationfailure,}) {final _that = this;
switch (_that) {
case _HandlingReservationInitial():
return handlingreservationinitail();case HandlingReservationLoading():
return handlingreservationloading();case HandlingReservationSuccess():
return handlingreservationsuccess(_that.data);case HandlingReservationFailure():
return handlingreservationfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  handlingreservationinitail,TResult? Function()?  handlingreservationloading,TResult? Function( T data)?  handlingreservationsuccess,TResult? Function( String error)?  handlingreservationfailure,}) {final _that = this;
switch (_that) {
case _HandlingReservationInitial() when handlingreservationinitail != null:
return handlingreservationinitail();case HandlingReservationLoading() when handlingreservationloading != null:
return handlingreservationloading();case HandlingReservationSuccess() when handlingreservationsuccess != null:
return handlingreservationsuccess(_that.data);case HandlingReservationFailure() when handlingreservationfailure != null:
return handlingreservationfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _HandlingReservationInitial<T> implements HandlingReservationState<T> {
  const _HandlingReservationInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HandlingReservationInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HandlingReservationState<$T>.handlingreservationinitail()';
}


}




/// @nodoc


class HandlingReservationLoading<T> implements HandlingReservationState<T> {
  const HandlingReservationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandlingReservationLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HandlingReservationState<$T>.handlingreservationloading()';
}


}




/// @nodoc


class HandlingReservationSuccess<T> implements HandlingReservationState<T> {
  const HandlingReservationSuccess(this.data);
  

 final  T data;

/// Create a copy of HandlingReservationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandlingReservationSuccessCopyWith<T, HandlingReservationSuccess<T>> get copyWith => _$HandlingReservationSuccessCopyWithImpl<T, HandlingReservationSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandlingReservationSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'HandlingReservationState<$T>.handlingreservationsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $HandlingReservationSuccessCopyWith<T,$Res> implements $HandlingReservationStateCopyWith<T, $Res> {
  factory $HandlingReservationSuccessCopyWith(HandlingReservationSuccess<T> value, $Res Function(HandlingReservationSuccess<T>) _then) = _$HandlingReservationSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$HandlingReservationSuccessCopyWithImpl<T,$Res>
    implements $HandlingReservationSuccessCopyWith<T, $Res> {
  _$HandlingReservationSuccessCopyWithImpl(this._self, this._then);

  final HandlingReservationSuccess<T> _self;
  final $Res Function(HandlingReservationSuccess<T>) _then;

/// Create a copy of HandlingReservationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(HandlingReservationSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class HandlingReservationFailure<T> implements HandlingReservationState<T> {
  const HandlingReservationFailure({required this.error});
  

 final  String error;

/// Create a copy of HandlingReservationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandlingReservationFailureCopyWith<T, HandlingReservationFailure<T>> get copyWith => _$HandlingReservationFailureCopyWithImpl<T, HandlingReservationFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandlingReservationFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HandlingReservationState<$T>.handlingreservationfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $HandlingReservationFailureCopyWith<T,$Res> implements $HandlingReservationStateCopyWith<T, $Res> {
  factory $HandlingReservationFailureCopyWith(HandlingReservationFailure<T> value, $Res Function(HandlingReservationFailure<T>) _then) = _$HandlingReservationFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$HandlingReservationFailureCopyWithImpl<T,$Res>
    implements $HandlingReservationFailureCopyWith<T, $Res> {
  _$HandlingReservationFailureCopyWithImpl(this._self, this._then);

  final HandlingReservationFailure<T> _self;
  final $Res Function(HandlingReservationFailure<T>) _then;

/// Create a copy of HandlingReservationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(HandlingReservationFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
