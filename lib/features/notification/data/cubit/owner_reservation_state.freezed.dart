// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owner_reservation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OwnerReservationState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OwnerReservationState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OwnerReservationState<$T>()';
}


}

/// @nodoc
class $OwnerReservationStateCopyWith<T,$Res>  {
$OwnerReservationStateCopyWith(OwnerReservationState<T> _, $Res Function(OwnerReservationState<T>) __);
}


/// Adds pattern-matching-related methods to [OwnerReservationState].
extension OwnerReservationStatePatterns<T> on OwnerReservationState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _OwnerReservationInitial<T> value)?  ownerreservationinitial,TResult Function( OwnerReservationLoading<T> value)?  ownerreservationloading,TResult Function( OwnerReservationSuccess<T> value)?  ownerreservationsuccess,TResult Function( OwnerReservationFailure<T> value)?  ownerreservationfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OwnerReservationInitial() when ownerreservationinitial != null:
return ownerreservationinitial(_that);case OwnerReservationLoading() when ownerreservationloading != null:
return ownerreservationloading(_that);case OwnerReservationSuccess() when ownerreservationsuccess != null:
return ownerreservationsuccess(_that);case OwnerReservationFailure() when ownerreservationfailure != null:
return ownerreservationfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _OwnerReservationInitial<T> value)  ownerreservationinitial,required TResult Function( OwnerReservationLoading<T> value)  ownerreservationloading,required TResult Function( OwnerReservationSuccess<T> value)  ownerreservationsuccess,required TResult Function( OwnerReservationFailure<T> value)  ownerreservationfailure,}){
final _that = this;
switch (_that) {
case _OwnerReservationInitial():
return ownerreservationinitial(_that);case OwnerReservationLoading():
return ownerreservationloading(_that);case OwnerReservationSuccess():
return ownerreservationsuccess(_that);case OwnerReservationFailure():
return ownerreservationfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _OwnerReservationInitial<T> value)?  ownerreservationinitial,TResult? Function( OwnerReservationLoading<T> value)?  ownerreservationloading,TResult? Function( OwnerReservationSuccess<T> value)?  ownerreservationsuccess,TResult? Function( OwnerReservationFailure<T> value)?  ownerreservationfailure,}){
final _that = this;
switch (_that) {
case _OwnerReservationInitial() when ownerreservationinitial != null:
return ownerreservationinitial(_that);case OwnerReservationLoading() when ownerreservationloading != null:
return ownerreservationloading(_that);case OwnerReservationSuccess() when ownerreservationsuccess != null:
return ownerreservationsuccess(_that);case OwnerReservationFailure() when ownerreservationfailure != null:
return ownerreservationfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  ownerreservationinitial,TResult Function()?  ownerreservationloading,TResult Function( T data)?  ownerreservationsuccess,TResult Function( String error)?  ownerreservationfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OwnerReservationInitial() when ownerreservationinitial != null:
return ownerreservationinitial();case OwnerReservationLoading() when ownerreservationloading != null:
return ownerreservationloading();case OwnerReservationSuccess() when ownerreservationsuccess != null:
return ownerreservationsuccess(_that.data);case OwnerReservationFailure() when ownerreservationfailure != null:
return ownerreservationfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  ownerreservationinitial,required TResult Function()  ownerreservationloading,required TResult Function( T data)  ownerreservationsuccess,required TResult Function( String error)  ownerreservationfailure,}) {final _that = this;
switch (_that) {
case _OwnerReservationInitial():
return ownerreservationinitial();case OwnerReservationLoading():
return ownerreservationloading();case OwnerReservationSuccess():
return ownerreservationsuccess(_that.data);case OwnerReservationFailure():
return ownerreservationfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  ownerreservationinitial,TResult? Function()?  ownerreservationloading,TResult? Function( T data)?  ownerreservationsuccess,TResult? Function( String error)?  ownerreservationfailure,}) {final _that = this;
switch (_that) {
case _OwnerReservationInitial() when ownerreservationinitial != null:
return ownerreservationinitial();case OwnerReservationLoading() when ownerreservationloading != null:
return ownerreservationloading();case OwnerReservationSuccess() when ownerreservationsuccess != null:
return ownerreservationsuccess(_that.data);case OwnerReservationFailure() when ownerreservationfailure != null:
return ownerreservationfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _OwnerReservationInitial<T> implements OwnerReservationState<T> {
  const _OwnerReservationInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OwnerReservationInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OwnerReservationState<$T>.ownerreservationinitial()';
}


}




/// @nodoc


class OwnerReservationLoading<T> implements OwnerReservationState<T> {
  const OwnerReservationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OwnerReservationLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OwnerReservationState<$T>.ownerreservationloading()';
}


}




/// @nodoc


class OwnerReservationSuccess<T> implements OwnerReservationState<T> {
  const OwnerReservationSuccess(this.data);
  

 final  T data;

/// Create a copy of OwnerReservationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnerReservationSuccessCopyWith<T, OwnerReservationSuccess<T>> get copyWith => _$OwnerReservationSuccessCopyWithImpl<T, OwnerReservationSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OwnerReservationSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'OwnerReservationState<$T>.ownerreservationsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $OwnerReservationSuccessCopyWith<T,$Res> implements $OwnerReservationStateCopyWith<T, $Res> {
  factory $OwnerReservationSuccessCopyWith(OwnerReservationSuccess<T> value, $Res Function(OwnerReservationSuccess<T>) _then) = _$OwnerReservationSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$OwnerReservationSuccessCopyWithImpl<T,$Res>
    implements $OwnerReservationSuccessCopyWith<T, $Res> {
  _$OwnerReservationSuccessCopyWithImpl(this._self, this._then);

  final OwnerReservationSuccess<T> _self;
  final $Res Function(OwnerReservationSuccess<T>) _then;

/// Create a copy of OwnerReservationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(OwnerReservationSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class OwnerReservationFailure<T> implements OwnerReservationState<T> {
  const OwnerReservationFailure({required this.error});
  

 final  String error;

/// Create a copy of OwnerReservationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnerReservationFailureCopyWith<T, OwnerReservationFailure<T>> get copyWith => _$OwnerReservationFailureCopyWithImpl<T, OwnerReservationFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OwnerReservationFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'OwnerReservationState<$T>.ownerreservationfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $OwnerReservationFailureCopyWith<T,$Res> implements $OwnerReservationStateCopyWith<T, $Res> {
  factory $OwnerReservationFailureCopyWith(OwnerReservationFailure<T> value, $Res Function(OwnerReservationFailure<T>) _then) = _$OwnerReservationFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$OwnerReservationFailureCopyWithImpl<T,$Res>
    implements $OwnerReservationFailureCopyWith<T, $Res> {
  _$OwnerReservationFailureCopyWithImpl(this._self, this._then);

  final OwnerReservationFailure<T> _self;
  final $Res Function(OwnerReservationFailure<T>) _then;

/// Create a copy of OwnerReservationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(OwnerReservationFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
