// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_reservation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CancelReservationState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelReservationState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CancelReservationState<$T>()';
}


}

/// @nodoc
class $CancelReservationStateCopyWith<T,$Res>  {
$CancelReservationStateCopyWith(CancelReservationState<T> _, $Res Function(CancelReservationState<T>) __);
}


/// Adds pattern-matching-related methods to [CancelReservationState].
extension CancelReservationStatePatterns<T> on CancelReservationState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CancelReservationInitial<T> value)?  initial,TResult Function( CancelReservationsLoading<T> value)?  cancelreservationloading,TResult Function( CancelReservationsSuccess<T> value)?  cancelreservationsuccess,TResult Function( CancelReservationsFailure<T> value)?  cancelreservationfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CancelReservationInitial() when initial != null:
return initial(_that);case CancelReservationsLoading() when cancelreservationloading != null:
return cancelreservationloading(_that);case CancelReservationsSuccess() when cancelreservationsuccess != null:
return cancelreservationsuccess(_that);case CancelReservationsFailure() when cancelreservationfailure != null:
return cancelreservationfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CancelReservationInitial<T> value)  initial,required TResult Function( CancelReservationsLoading<T> value)  cancelreservationloading,required TResult Function( CancelReservationsSuccess<T> value)  cancelreservationsuccess,required TResult Function( CancelReservationsFailure<T> value)  cancelreservationfailure,}){
final _that = this;
switch (_that) {
case _CancelReservationInitial():
return initial(_that);case CancelReservationsLoading():
return cancelreservationloading(_that);case CancelReservationsSuccess():
return cancelreservationsuccess(_that);case CancelReservationsFailure():
return cancelreservationfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CancelReservationInitial<T> value)?  initial,TResult? Function( CancelReservationsLoading<T> value)?  cancelreservationloading,TResult? Function( CancelReservationsSuccess<T> value)?  cancelreservationsuccess,TResult? Function( CancelReservationsFailure<T> value)?  cancelreservationfailure,}){
final _that = this;
switch (_that) {
case _CancelReservationInitial() when initial != null:
return initial(_that);case CancelReservationsLoading() when cancelreservationloading != null:
return cancelreservationloading(_that);case CancelReservationsSuccess() when cancelreservationsuccess != null:
return cancelreservationsuccess(_that);case CancelReservationsFailure() when cancelreservationfailure != null:
return cancelreservationfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  cancelreservationloading,TResult Function( T data)?  cancelreservationsuccess,TResult Function( Exception exception)?  cancelreservationfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CancelReservationInitial() when initial != null:
return initial();case CancelReservationsLoading() when cancelreservationloading != null:
return cancelreservationloading();case CancelReservationsSuccess() when cancelreservationsuccess != null:
return cancelreservationsuccess(_that.data);case CancelReservationsFailure() when cancelreservationfailure != null:
return cancelreservationfailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  cancelreservationloading,required TResult Function( T data)  cancelreservationsuccess,required TResult Function( Exception exception)  cancelreservationfailure,}) {final _that = this;
switch (_that) {
case _CancelReservationInitial():
return initial();case CancelReservationsLoading():
return cancelreservationloading();case CancelReservationsSuccess():
return cancelreservationsuccess(_that.data);case CancelReservationsFailure():
return cancelreservationfailure(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  cancelreservationloading,TResult? Function( T data)?  cancelreservationsuccess,TResult? Function( Exception exception)?  cancelreservationfailure,}) {final _that = this;
switch (_that) {
case _CancelReservationInitial() when initial != null:
return initial();case CancelReservationsLoading() when cancelreservationloading != null:
return cancelreservationloading();case CancelReservationsSuccess() when cancelreservationsuccess != null:
return cancelreservationsuccess(_that.data);case CancelReservationsFailure() when cancelreservationfailure != null:
return cancelreservationfailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _CancelReservationInitial<T> implements CancelReservationState<T> {
  const _CancelReservationInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelReservationInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CancelReservationState<$T>.initial()';
}


}




/// @nodoc


class CancelReservationsLoading<T> implements CancelReservationState<T> {
  const CancelReservationsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelReservationsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CancelReservationState<$T>.cancelreservationloading()';
}


}




/// @nodoc


class CancelReservationsSuccess<T> implements CancelReservationState<T> {
  const CancelReservationsSuccess(this.data);
  

 final  T data;

/// Create a copy of CancelReservationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelReservationsSuccessCopyWith<T, CancelReservationsSuccess<T>> get copyWith => _$CancelReservationsSuccessCopyWithImpl<T, CancelReservationsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelReservationsSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CancelReservationState<$T>.cancelreservationsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $CancelReservationsSuccessCopyWith<T,$Res> implements $CancelReservationStateCopyWith<T, $Res> {
  factory $CancelReservationsSuccessCopyWith(CancelReservationsSuccess<T> value, $Res Function(CancelReservationsSuccess<T>) _then) = _$CancelReservationsSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$CancelReservationsSuccessCopyWithImpl<T,$Res>
    implements $CancelReservationsSuccessCopyWith<T, $Res> {
  _$CancelReservationsSuccessCopyWithImpl(this._self, this._then);

  final CancelReservationsSuccess<T> _self;
  final $Res Function(CancelReservationsSuccess<T>) _then;

/// Create a copy of CancelReservationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(CancelReservationsSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class CancelReservationsFailure<T> implements CancelReservationState<T> {
  const CancelReservationsFailure({required this.exception});
  

 final  Exception exception;

/// Create a copy of CancelReservationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelReservationsFailureCopyWith<T, CancelReservationsFailure<T>> get copyWith => _$CancelReservationsFailureCopyWithImpl<T, CancelReservationsFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelReservationsFailure<T>&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'CancelReservationState<$T>.cancelreservationfailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $CancelReservationsFailureCopyWith<T,$Res> implements $CancelReservationStateCopyWith<T, $Res> {
  factory $CancelReservationsFailureCopyWith(CancelReservationsFailure<T> value, $Res Function(CancelReservationsFailure<T>) _then) = _$CancelReservationsFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$CancelReservationsFailureCopyWithImpl<T,$Res>
    implements $CancelReservationsFailureCopyWith<T, $Res> {
  _$CancelReservationsFailureCopyWithImpl(this._self, this._then);

  final CancelReservationsFailure<T> _self;
  final $Res Function(CancelReservationsFailure<T>) _then;

/// Create a copy of CancelReservationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(CancelReservationsFailure<T>(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
