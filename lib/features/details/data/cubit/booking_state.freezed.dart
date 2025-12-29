// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState<$T>()';
}


}

/// @nodoc
class $BookingStateCopyWith<T,$Res>  {
$BookingStateCopyWith(BookingState<T> _, $Res Function(BookingState<T>) __);
}


/// Adds pattern-matching-related methods to [BookingState].
extension BookingStatePatterns<T> on BookingState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _BookingInitial<T> value)?  initial,TResult Function( BookingLoading<T> value)?  bookingloading,TResult Function( BookingSuccess<T> value)?  bookingsuccess,TResult Function( BookingFailure<T> value)?  bookingfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingInitial() when initial != null:
return initial(_that);case BookingLoading() when bookingloading != null:
return bookingloading(_that);case BookingSuccess() when bookingsuccess != null:
return bookingsuccess(_that);case BookingFailure() when bookingfailure != null:
return bookingfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _BookingInitial<T> value)  initial,required TResult Function( BookingLoading<T> value)  bookingloading,required TResult Function( BookingSuccess<T> value)  bookingsuccess,required TResult Function( BookingFailure<T> value)  bookingfailure,}){
final _that = this;
switch (_that) {
case _BookingInitial():
return initial(_that);case BookingLoading():
return bookingloading(_that);case BookingSuccess():
return bookingsuccess(_that);case BookingFailure():
return bookingfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _BookingInitial<T> value)?  initial,TResult? Function( BookingLoading<T> value)?  bookingloading,TResult? Function( BookingSuccess<T> value)?  bookingsuccess,TResult? Function( BookingFailure<T> value)?  bookingfailure,}){
final _that = this;
switch (_that) {
case _BookingInitial() when initial != null:
return initial(_that);case BookingLoading() when bookingloading != null:
return bookingloading(_that);case BookingSuccess() when bookingsuccess != null:
return bookingsuccess(_that);case BookingFailure() when bookingfailure != null:
return bookingfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  bookingloading,TResult Function( T data)?  bookingsuccess,TResult Function( Exception exception)?  bookingfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingInitial() when initial != null:
return initial();case BookingLoading() when bookingloading != null:
return bookingloading();case BookingSuccess() when bookingsuccess != null:
return bookingsuccess(_that.data);case BookingFailure() when bookingfailure != null:
return bookingfailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  bookingloading,required TResult Function( T data)  bookingsuccess,required TResult Function( Exception exception)  bookingfailure,}) {final _that = this;
switch (_that) {
case _BookingInitial():
return initial();case BookingLoading():
return bookingloading();case BookingSuccess():
return bookingsuccess(_that.data);case BookingFailure():
return bookingfailure(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  bookingloading,TResult? Function( T data)?  bookingsuccess,TResult? Function( Exception exception)?  bookingfailure,}) {final _that = this;
switch (_that) {
case _BookingInitial() when initial != null:
return initial();case BookingLoading() when bookingloading != null:
return bookingloading();case BookingSuccess() when bookingsuccess != null:
return bookingsuccess(_that.data);case BookingFailure() when bookingfailure != null:
return bookingfailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _BookingInitial<T> implements BookingState<T> {
  const _BookingInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState<$T>.initial()';
}


}




/// @nodoc


class BookingLoading<T> implements BookingState<T> {
  const BookingLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState<$T>.bookingloading()';
}


}




/// @nodoc


class BookingSuccess<T> implements BookingState<T> {
  const BookingSuccess(this.data);
  

 final  T data;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingSuccessCopyWith<T, BookingSuccess<T>> get copyWith => _$BookingSuccessCopyWithImpl<T, BookingSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BookingState<$T>.bookingsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $BookingSuccessCopyWith<T,$Res> implements $BookingStateCopyWith<T, $Res> {
  factory $BookingSuccessCopyWith(BookingSuccess<T> value, $Res Function(BookingSuccess<T>) _then) = _$BookingSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$BookingSuccessCopyWithImpl<T,$Res>
    implements $BookingSuccessCopyWith<T, $Res> {
  _$BookingSuccessCopyWithImpl(this._self, this._then);

  final BookingSuccess<T> _self;
  final $Res Function(BookingSuccess<T>) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(BookingSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class BookingFailure<T> implements BookingState<T> {
  const BookingFailure({required this.exception});
  

 final  Exception exception;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingFailureCopyWith<T, BookingFailure<T>> get copyWith => _$BookingFailureCopyWithImpl<T, BookingFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingFailure<T>&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'BookingState<$T>.bookingfailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $BookingFailureCopyWith<T,$Res> implements $BookingStateCopyWith<T, $Res> {
  factory $BookingFailureCopyWith(BookingFailure<T> value, $Res Function(BookingFailure<T>) _then) = _$BookingFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$BookingFailureCopyWithImpl<T,$Res>
    implements $BookingFailureCopyWith<T, $Res> {
  _$BookingFailureCopyWithImpl(this._self, this._then);

  final BookingFailure<T> _self;
  final $Res Function(BookingFailure<T>) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(BookingFailure<T>(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
