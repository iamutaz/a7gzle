// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LogoutState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogoutState<$T>()';
}


}

/// @nodoc
class $LogoutStateCopyWith<T,$Res>  {
$LogoutStateCopyWith(LogoutState<T> _, $Res Function(LogoutState<T>) __);
}


/// Adds pattern-matching-related methods to [LogoutState].
extension LogoutStatePatterns<T> on LogoutState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LogoutInitial<T> value)?  initial,TResult Function( LogoutLoading<T> value)?  logoutloading,TResult Function( LogoutSuccess<T> value)?  logoutsuccess,TResult Function( LogoutFailure<T> value)?  logoutfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogoutInitial() when initial != null:
return initial(_that);case LogoutLoading() when logoutloading != null:
return logoutloading(_that);case LogoutSuccess() when logoutsuccess != null:
return logoutsuccess(_that);case LogoutFailure() when logoutfailure != null:
return logoutfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LogoutInitial<T> value)  initial,required TResult Function( LogoutLoading<T> value)  logoutloading,required TResult Function( LogoutSuccess<T> value)  logoutsuccess,required TResult Function( LogoutFailure<T> value)  logoutfailure,}){
final _that = this;
switch (_that) {
case _LogoutInitial():
return initial(_that);case LogoutLoading():
return logoutloading(_that);case LogoutSuccess():
return logoutsuccess(_that);case LogoutFailure():
return logoutfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LogoutInitial<T> value)?  initial,TResult? Function( LogoutLoading<T> value)?  logoutloading,TResult? Function( LogoutSuccess<T> value)?  logoutsuccess,TResult? Function( LogoutFailure<T> value)?  logoutfailure,}){
final _that = this;
switch (_that) {
case _LogoutInitial() when initial != null:
return initial(_that);case LogoutLoading() when logoutloading != null:
return logoutloading(_that);case LogoutSuccess() when logoutsuccess != null:
return logoutsuccess(_that);case LogoutFailure() when logoutfailure != null:
return logoutfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  logoutloading,TResult Function( T data)?  logoutsuccess,TResult Function( Exception exception)?  logoutfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LogoutInitial() when initial != null:
return initial();case LogoutLoading() when logoutloading != null:
return logoutloading();case LogoutSuccess() when logoutsuccess != null:
return logoutsuccess(_that.data);case LogoutFailure() when logoutfailure != null:
return logoutfailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  logoutloading,required TResult Function( T data)  logoutsuccess,required TResult Function( Exception exception)  logoutfailure,}) {final _that = this;
switch (_that) {
case _LogoutInitial():
return initial();case LogoutLoading():
return logoutloading();case LogoutSuccess():
return logoutsuccess(_that.data);case LogoutFailure():
return logoutfailure(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  logoutloading,TResult? Function( T data)?  logoutsuccess,TResult? Function( Exception exception)?  logoutfailure,}) {final _that = this;
switch (_that) {
case _LogoutInitial() when initial != null:
return initial();case LogoutLoading() when logoutloading != null:
return logoutloading();case LogoutSuccess() when logoutsuccess != null:
return logoutsuccess(_that.data);case LogoutFailure() when logoutfailure != null:
return logoutfailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _LogoutInitial<T> implements LogoutState<T> {
  const _LogoutInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogoutState<$T>.initial()';
}


}




/// @nodoc


class LogoutLoading<T> implements LogoutState<T> {
  const LogoutLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogoutState<$T>.logoutloading()';
}


}




/// @nodoc


class LogoutSuccess<T> implements LogoutState<T> {
  const LogoutSuccess(this.data);
  

 final  T data;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutSuccessCopyWith<T, LogoutSuccess<T>> get copyWith => _$LogoutSuccessCopyWithImpl<T, LogoutSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LogoutState<$T>.logoutsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $LogoutSuccessCopyWith<T,$Res> implements $LogoutStateCopyWith<T, $Res> {
  factory $LogoutSuccessCopyWith(LogoutSuccess<T> value, $Res Function(LogoutSuccess<T>) _then) = _$LogoutSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$LogoutSuccessCopyWithImpl<T,$Res>
    implements $LogoutSuccessCopyWith<T, $Res> {
  _$LogoutSuccessCopyWithImpl(this._self, this._then);

  final LogoutSuccess<T> _self;
  final $Res Function(LogoutSuccess<T>) _then;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(LogoutSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class LogoutFailure<T> implements LogoutState<T> {
  const LogoutFailure({required this.exception});
  

 final  Exception exception;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutFailureCopyWith<T, LogoutFailure<T>> get copyWith => _$LogoutFailureCopyWithImpl<T, LogoutFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutFailure<T>&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'LogoutState<$T>.logoutfailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $LogoutFailureCopyWith<T,$Res> implements $LogoutStateCopyWith<T, $Res> {
  factory $LogoutFailureCopyWith(LogoutFailure<T> value, $Res Function(LogoutFailure<T>) _then) = _$LogoutFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$LogoutFailureCopyWithImpl<T,$Res>
    implements $LogoutFailureCopyWith<T, $Res> {
  _$LogoutFailureCopyWithImpl(this._self, this._then);

  final LogoutFailure<T> _self;
  final $Res Function(LogoutFailure<T>) _then;

/// Create a copy of LogoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(LogoutFailure<T>(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
