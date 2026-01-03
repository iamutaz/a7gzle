// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_reservation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateReservationState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateReservationState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateReservationState<$T>()';
}


}

/// @nodoc
class $UpdateReservationStateCopyWith<T,$Res>  {
$UpdateReservationStateCopyWith(UpdateReservationState<T> _, $Res Function(UpdateReservationState<T>) __);
}


/// Adds pattern-matching-related methods to [UpdateReservationState].
extension UpdateReservationStatePatterns<T> on UpdateReservationState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateReservationIntial<T> value)?  initial,TResult Function( UpdatedReservationLoading<T> value)?  updatereservationloading,TResult Function( UpdateReservationSuccess<T> value)?  updatereservationsuccess,TResult Function( UpdateReservationFailure<T> value)?  updatereservationfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateReservationIntial() when initial != null:
return initial(_that);case UpdatedReservationLoading() when updatereservationloading != null:
return updatereservationloading(_that);case UpdateReservationSuccess() when updatereservationsuccess != null:
return updatereservationsuccess(_that);case UpdateReservationFailure() when updatereservationfailure != null:
return updatereservationfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateReservationIntial<T> value)  initial,required TResult Function( UpdatedReservationLoading<T> value)  updatereservationloading,required TResult Function( UpdateReservationSuccess<T> value)  updatereservationsuccess,required TResult Function( UpdateReservationFailure<T> value)  updatereservationfailure,}){
final _that = this;
switch (_that) {
case _UpdateReservationIntial():
return initial(_that);case UpdatedReservationLoading():
return updatereservationloading(_that);case UpdateReservationSuccess():
return updatereservationsuccess(_that);case UpdateReservationFailure():
return updatereservationfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateReservationIntial<T> value)?  initial,TResult? Function( UpdatedReservationLoading<T> value)?  updatereservationloading,TResult? Function( UpdateReservationSuccess<T> value)?  updatereservationsuccess,TResult? Function( UpdateReservationFailure<T> value)?  updatereservationfailure,}){
final _that = this;
switch (_that) {
case _UpdateReservationIntial() when initial != null:
return initial(_that);case UpdatedReservationLoading() when updatereservationloading != null:
return updatereservationloading(_that);case UpdateReservationSuccess() when updatereservationsuccess != null:
return updatereservationsuccess(_that);case UpdateReservationFailure() when updatereservationfailure != null:
return updatereservationfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  updatereservationloading,TResult Function( T data)?  updatereservationsuccess,TResult Function( Exception exception)?  updatereservationfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateReservationIntial() when initial != null:
return initial();case UpdatedReservationLoading() when updatereservationloading != null:
return updatereservationloading();case UpdateReservationSuccess() when updatereservationsuccess != null:
return updatereservationsuccess(_that.data);case UpdateReservationFailure() when updatereservationfailure != null:
return updatereservationfailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  updatereservationloading,required TResult Function( T data)  updatereservationsuccess,required TResult Function( Exception exception)  updatereservationfailure,}) {final _that = this;
switch (_that) {
case _UpdateReservationIntial():
return initial();case UpdatedReservationLoading():
return updatereservationloading();case UpdateReservationSuccess():
return updatereservationsuccess(_that.data);case UpdateReservationFailure():
return updatereservationfailure(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  updatereservationloading,TResult? Function( T data)?  updatereservationsuccess,TResult? Function( Exception exception)?  updatereservationfailure,}) {final _that = this;
switch (_that) {
case _UpdateReservationIntial() when initial != null:
return initial();case UpdatedReservationLoading() when updatereservationloading != null:
return updatereservationloading();case UpdateReservationSuccess() when updatereservationsuccess != null:
return updatereservationsuccess(_that.data);case UpdateReservationFailure() when updatereservationfailure != null:
return updatereservationfailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateReservationIntial<T> implements UpdateReservationState<T> {
  const _UpdateReservationIntial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateReservationIntial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateReservationState<$T>.initial()';
}


}




/// @nodoc


class UpdatedReservationLoading<T> implements UpdateReservationState<T> {
  const UpdatedReservationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatedReservationLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateReservationState<$T>.updatereservationloading()';
}


}




/// @nodoc


class UpdateReservationSuccess<T> implements UpdateReservationState<T> {
  const UpdateReservationSuccess(this.data);
  

 final  T data;

/// Create a copy of UpdateReservationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateReservationSuccessCopyWith<T, UpdateReservationSuccess<T>> get copyWith => _$UpdateReservationSuccessCopyWithImpl<T, UpdateReservationSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateReservationSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'UpdateReservationState<$T>.updatereservationsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $UpdateReservationSuccessCopyWith<T,$Res> implements $UpdateReservationStateCopyWith<T, $Res> {
  factory $UpdateReservationSuccessCopyWith(UpdateReservationSuccess<T> value, $Res Function(UpdateReservationSuccess<T>) _then) = _$UpdateReservationSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$UpdateReservationSuccessCopyWithImpl<T,$Res>
    implements $UpdateReservationSuccessCopyWith<T, $Res> {
  _$UpdateReservationSuccessCopyWithImpl(this._self, this._then);

  final UpdateReservationSuccess<T> _self;
  final $Res Function(UpdateReservationSuccess<T>) _then;

/// Create a copy of UpdateReservationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(UpdateReservationSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class UpdateReservationFailure<T> implements UpdateReservationState<T> {
  const UpdateReservationFailure({required this.exception});
  

 final  Exception exception;

/// Create a copy of UpdateReservationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateReservationFailureCopyWith<T, UpdateReservationFailure<T>> get copyWith => _$UpdateReservationFailureCopyWithImpl<T, UpdateReservationFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateReservationFailure<T>&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'UpdateReservationState<$T>.updatereservationfailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $UpdateReservationFailureCopyWith<T,$Res> implements $UpdateReservationStateCopyWith<T, $Res> {
  factory $UpdateReservationFailureCopyWith(UpdateReservationFailure<T> value, $Res Function(UpdateReservationFailure<T>) _then) = _$UpdateReservationFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$UpdateReservationFailureCopyWithImpl<T,$Res>
    implements $UpdateReservationFailureCopyWith<T, $Res> {
  _$UpdateReservationFailureCopyWithImpl(this._self, this._then);

  final UpdateReservationFailure<T> _self;
  final $Res Function(UpdateReservationFailure<T>) _then;

/// Create a copy of UpdateReservationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(UpdateReservationFailure<T>(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
