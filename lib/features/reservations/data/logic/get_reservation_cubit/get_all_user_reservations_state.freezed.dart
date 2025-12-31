// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_user_reservations_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetAllUserReservationsState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllUserReservationsState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllUserReservationsState<$T>()';
}


}

/// @nodoc
class $GetAllUserReservationsStateCopyWith<T,$Res>  {
$GetAllUserReservationsStateCopyWith(GetAllUserReservationsState<T> _, $Res Function(GetAllUserReservationsState<T>) __);
}


/// Adds pattern-matching-related methods to [GetAllUserReservationsState].
extension GetAllUserReservationsStatePatterns<T> on GetAllUserReservationsState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LogoutInitial<T> value)?  initial,TResult Function( ReservationsLoading<T> value)?  reservationsloading,TResult Function( ReservationsSuccess<T> value)?  reservationssuccess,TResult Function( ReservationsFailure<T> value)?  reservationsfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogoutInitial() when initial != null:
return initial(_that);case ReservationsLoading() when reservationsloading != null:
return reservationsloading(_that);case ReservationsSuccess() when reservationssuccess != null:
return reservationssuccess(_that);case ReservationsFailure() when reservationsfailure != null:
return reservationsfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LogoutInitial<T> value)  initial,required TResult Function( ReservationsLoading<T> value)  reservationsloading,required TResult Function( ReservationsSuccess<T> value)  reservationssuccess,required TResult Function( ReservationsFailure<T> value)  reservationsfailure,}){
final _that = this;
switch (_that) {
case _LogoutInitial():
return initial(_that);case ReservationsLoading():
return reservationsloading(_that);case ReservationsSuccess():
return reservationssuccess(_that);case ReservationsFailure():
return reservationsfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LogoutInitial<T> value)?  initial,TResult? Function( ReservationsLoading<T> value)?  reservationsloading,TResult? Function( ReservationsSuccess<T> value)?  reservationssuccess,TResult? Function( ReservationsFailure<T> value)?  reservationsfailure,}){
final _that = this;
switch (_that) {
case _LogoutInitial() when initial != null:
return initial(_that);case ReservationsLoading() when reservationsloading != null:
return reservationsloading(_that);case ReservationsSuccess() when reservationssuccess != null:
return reservationssuccess(_that);case ReservationsFailure() when reservationsfailure != null:
return reservationsfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  reservationsloading,TResult Function( T data)?  reservationssuccess,TResult Function( Exception exception)?  reservationsfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LogoutInitial() when initial != null:
return initial();case ReservationsLoading() when reservationsloading != null:
return reservationsloading();case ReservationsSuccess() when reservationssuccess != null:
return reservationssuccess(_that.data);case ReservationsFailure() when reservationsfailure != null:
return reservationsfailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  reservationsloading,required TResult Function( T data)  reservationssuccess,required TResult Function( Exception exception)  reservationsfailure,}) {final _that = this;
switch (_that) {
case _LogoutInitial():
return initial();case ReservationsLoading():
return reservationsloading();case ReservationsSuccess():
return reservationssuccess(_that.data);case ReservationsFailure():
return reservationsfailure(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  reservationsloading,TResult? Function( T data)?  reservationssuccess,TResult? Function( Exception exception)?  reservationsfailure,}) {final _that = this;
switch (_that) {
case _LogoutInitial() when initial != null:
return initial();case ReservationsLoading() when reservationsloading != null:
return reservationsloading();case ReservationsSuccess() when reservationssuccess != null:
return reservationssuccess(_that.data);case ReservationsFailure() when reservationsfailure != null:
return reservationsfailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _LogoutInitial<T> implements GetAllUserReservationsState<T> {
  const _LogoutInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllUserReservationsState<$T>.initial()';
}


}




/// @nodoc


class ReservationsLoading<T> implements GetAllUserReservationsState<T> {
  const ReservationsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReservationsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllUserReservationsState<$T>.reservationsloading()';
}


}




/// @nodoc


class ReservationsSuccess<T> implements GetAllUserReservationsState<T> {
  const ReservationsSuccess(this.data);
  

 final  T data;

/// Create a copy of GetAllUserReservationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReservationsSuccessCopyWith<T, ReservationsSuccess<T>> get copyWith => _$ReservationsSuccessCopyWithImpl<T, ReservationsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReservationsSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetAllUserReservationsState<$T>.reservationssuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $ReservationsSuccessCopyWith<T,$Res> implements $GetAllUserReservationsStateCopyWith<T, $Res> {
  factory $ReservationsSuccessCopyWith(ReservationsSuccess<T> value, $Res Function(ReservationsSuccess<T>) _then) = _$ReservationsSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ReservationsSuccessCopyWithImpl<T,$Res>
    implements $ReservationsSuccessCopyWith<T, $Res> {
  _$ReservationsSuccessCopyWithImpl(this._self, this._then);

  final ReservationsSuccess<T> _self;
  final $Res Function(ReservationsSuccess<T>) _then;

/// Create a copy of GetAllUserReservationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ReservationsSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ReservationsFailure<T> implements GetAllUserReservationsState<T> {
  const ReservationsFailure({required this.exception});
  

 final  Exception exception;

/// Create a copy of GetAllUserReservationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReservationsFailureCopyWith<T, ReservationsFailure<T>> get copyWith => _$ReservationsFailureCopyWithImpl<T, ReservationsFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReservationsFailure<T>&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'GetAllUserReservationsState<$T>.reservationsfailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $ReservationsFailureCopyWith<T,$Res> implements $GetAllUserReservationsStateCopyWith<T, $Res> {
  factory $ReservationsFailureCopyWith(ReservationsFailure<T> value, $Res Function(ReservationsFailure<T>) _then) = _$ReservationsFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$ReservationsFailureCopyWithImpl<T,$Res>
    implements $ReservationsFailureCopyWith<T, $Res> {
  _$ReservationsFailureCopyWithImpl(this._self, this._then);

  final ReservationsFailure<T> _self;
  final $Res Function(ReservationsFailure<T>) _then;

/// Create a copy of GetAllUserReservationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(ReservationsFailure<T>(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
