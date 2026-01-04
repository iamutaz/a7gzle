// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_apartment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RateApartmentState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RateApartmentState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RateApartmentState<$T>()';
}


}

/// @nodoc
class $RateApartmentStateCopyWith<T,$Res>  {
$RateApartmentStateCopyWith(RateApartmentState<T> _, $Res Function(RateApartmentState<T>) __);
}


/// Adds pattern-matching-related methods to [RateApartmentState].
extension RateApartmentStatePatterns<T> on RateApartmentState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RatingInitial<T> value)?  initial,TResult Function( RatingLoading<T> value)?  ratingloading,TResult Function( RatingSuccess<T> value)?  ratingsuccess,TResult Function( RatingFailure<T> value)?  ratingfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RatingInitial() when initial != null:
return initial(_that);case RatingLoading() when ratingloading != null:
return ratingloading(_that);case RatingSuccess() when ratingsuccess != null:
return ratingsuccess(_that);case RatingFailure() when ratingfailure != null:
return ratingfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RatingInitial<T> value)  initial,required TResult Function( RatingLoading<T> value)  ratingloading,required TResult Function( RatingSuccess<T> value)  ratingsuccess,required TResult Function( RatingFailure<T> value)  ratingfailure,}){
final _that = this;
switch (_that) {
case _RatingInitial():
return initial(_that);case RatingLoading():
return ratingloading(_that);case RatingSuccess():
return ratingsuccess(_that);case RatingFailure():
return ratingfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RatingInitial<T> value)?  initial,TResult? Function( RatingLoading<T> value)?  ratingloading,TResult? Function( RatingSuccess<T> value)?  ratingsuccess,TResult? Function( RatingFailure<T> value)?  ratingfailure,}){
final _that = this;
switch (_that) {
case _RatingInitial() when initial != null:
return initial(_that);case RatingLoading() when ratingloading != null:
return ratingloading(_that);case RatingSuccess() when ratingsuccess != null:
return ratingsuccess(_that);case RatingFailure() when ratingfailure != null:
return ratingfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  ratingloading,TResult Function( T data)?  ratingsuccess,TResult Function( Exception exception)?  ratingfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RatingInitial() when initial != null:
return initial();case RatingLoading() when ratingloading != null:
return ratingloading();case RatingSuccess() when ratingsuccess != null:
return ratingsuccess(_that.data);case RatingFailure() when ratingfailure != null:
return ratingfailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  ratingloading,required TResult Function( T data)  ratingsuccess,required TResult Function( Exception exception)  ratingfailure,}) {final _that = this;
switch (_that) {
case _RatingInitial():
return initial();case RatingLoading():
return ratingloading();case RatingSuccess():
return ratingsuccess(_that.data);case RatingFailure():
return ratingfailure(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  ratingloading,TResult? Function( T data)?  ratingsuccess,TResult? Function( Exception exception)?  ratingfailure,}) {final _that = this;
switch (_that) {
case _RatingInitial() when initial != null:
return initial();case RatingLoading() when ratingloading != null:
return ratingloading();case RatingSuccess() when ratingsuccess != null:
return ratingsuccess(_that.data);case RatingFailure() when ratingfailure != null:
return ratingfailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _RatingInitial<T> implements RateApartmentState<T> {
  const _RatingInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RatingInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RateApartmentState<$T>.initial()';
}


}




/// @nodoc


class RatingLoading<T> implements RateApartmentState<T> {
  const RatingLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RatingLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RateApartmentState<$T>.ratingloading()';
}


}




/// @nodoc


class RatingSuccess<T> implements RateApartmentState<T> {
  const RatingSuccess(this.data);
  

 final  T data;

/// Create a copy of RateApartmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatingSuccessCopyWith<T, RatingSuccess<T>> get copyWith => _$RatingSuccessCopyWithImpl<T, RatingSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RatingSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'RateApartmentState<$T>.ratingsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $RatingSuccessCopyWith<T,$Res> implements $RateApartmentStateCopyWith<T, $Res> {
  factory $RatingSuccessCopyWith(RatingSuccess<T> value, $Res Function(RatingSuccess<T>) _then) = _$RatingSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$RatingSuccessCopyWithImpl<T,$Res>
    implements $RatingSuccessCopyWith<T, $Res> {
  _$RatingSuccessCopyWithImpl(this._self, this._then);

  final RatingSuccess<T> _self;
  final $Res Function(RatingSuccess<T>) _then;

/// Create a copy of RateApartmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(RatingSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class RatingFailure<T> implements RateApartmentState<T> {
  const RatingFailure({required this.exception});
  

 final  Exception exception;

/// Create a copy of RateApartmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatingFailureCopyWith<T, RatingFailure<T>> get copyWith => _$RatingFailureCopyWithImpl<T, RatingFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RatingFailure<T>&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'RateApartmentState<$T>.ratingfailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $RatingFailureCopyWith<T,$Res> implements $RateApartmentStateCopyWith<T, $Res> {
  factory $RatingFailureCopyWith(RatingFailure<T> value, $Res Function(RatingFailure<T>) _then) = _$RatingFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$RatingFailureCopyWithImpl<T,$Res>
    implements $RatingFailureCopyWith<T, $Res> {
  _$RatingFailureCopyWithImpl(this._self, this._then);

  final RatingFailure<T> _self;
  final $Res Function(RatingFailure<T>) _then;

/// Create a copy of RateApartmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(RatingFailure<T>(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
