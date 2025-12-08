// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginCubitState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginCubitState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginCubitState<$T>()';
}


}

/// @nodoc
class $LoginCubitStateCopyWith<T,$Res>  {
$LoginCubitStateCopyWith(LoginCubitState<T> _, $Res Function(LoginCubitState<T>) __);
}


/// Adds pattern-matching-related methods to [LoginCubitState].
extension LoginCubitStatePatterns<T> on LoginCubitState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( LoginLoading<T> value)?  loginloading,TResult Function( LoginSuccess<T> value)?  loginsuccess,TResult Function( LoginFailure<T> value)?  loginfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoginLoading() when loginloading != null:
return loginloading(_that);case LoginSuccess() when loginsuccess != null:
return loginsuccess(_that);case LoginFailure() when loginfailure != null:
return loginfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( LoginLoading<T> value)  loginloading,required TResult Function( LoginSuccess<T> value)  loginsuccess,required TResult Function( LoginFailure<T> value)  loginfailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoginLoading():
return loginloading(_that);case LoginSuccess():
return loginsuccess(_that);case LoginFailure():
return loginfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( LoginLoading<T> value)?  loginloading,TResult? Function( LoginSuccess<T> value)?  loginsuccess,TResult? Function( LoginFailure<T> value)?  loginfailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoginLoading() when loginloading != null:
return loginloading(_that);case LoginSuccess() when loginsuccess != null:
return loginsuccess(_that);case LoginFailure() when loginfailure != null:
return loginfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loginloading,TResult Function( T data)?  loginsuccess,TResult Function( DioException error)?  loginfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoginLoading() when loginloading != null:
return loginloading();case LoginSuccess() when loginsuccess != null:
return loginsuccess(_that.data);case LoginFailure() when loginfailure != null:
return loginfailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loginloading,required TResult Function( T data)  loginsuccess,required TResult Function( DioException error)  loginfailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoginLoading():
return loginloading();case LoginSuccess():
return loginsuccess(_that.data);case LoginFailure():
return loginfailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loginloading,TResult? Function( T data)?  loginsuccess,TResult? Function( DioException error)?  loginfailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoginLoading() when loginloading != null:
return loginloading();case LoginSuccess() when loginsuccess != null:
return loginsuccess(_that.data);case LoginFailure() when loginfailure != null:
return loginfailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements LoginCubitState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginCubitState<$T>.initial()';
}


}




/// @nodoc


class LoginLoading<T> implements LoginCubitState<T> {
  const LoginLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginCubitState<$T>.loginloading()';
}


}




/// @nodoc


class LoginSuccess<T> implements LoginCubitState<T> {
  const LoginSuccess(this.data);
  

 final  T data;

/// Create a copy of LoginCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessCopyWith<T, LoginSuccess<T>> get copyWith => _$LoginSuccessCopyWithImpl<T, LoginSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LoginCubitState<$T>.loginsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessCopyWith<T,$Res> implements $LoginCubitStateCopyWith<T, $Res> {
  factory $LoginSuccessCopyWith(LoginSuccess<T> value, $Res Function(LoginSuccess<T>) _then) = _$LoginSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$LoginSuccessCopyWithImpl<T,$Res>
    implements $LoginSuccessCopyWith<T, $Res> {
  _$LoginSuccessCopyWithImpl(this._self, this._then);

  final LoginSuccess<T> _self;
  final $Res Function(LoginSuccess<T>) _then;

/// Create a copy of LoginCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(LoginSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class LoginFailure<T> implements LoginCubitState<T> {
  const LoginFailure({required this.error});
  

 final  DioException error;

/// Create a copy of LoginCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginFailureCopyWith<T, LoginFailure<T>> get copyWith => _$LoginFailureCopyWithImpl<T, LoginFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'LoginCubitState<$T>.loginfailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $LoginFailureCopyWith<T,$Res> implements $LoginCubitStateCopyWith<T, $Res> {
  factory $LoginFailureCopyWith(LoginFailure<T> value, $Res Function(LoginFailure<T>) _then) = _$LoginFailureCopyWithImpl;
@useResult
$Res call({
 DioException error
});




}
/// @nodoc
class _$LoginFailureCopyWithImpl<T,$Res>
    implements $LoginFailureCopyWith<T, $Res> {
  _$LoginFailureCopyWithImpl(this._self, this._then);

  final LoginFailure<T> _self;
  final $Res Function(LoginFailure<T>) _then;

/// Create a copy of LoginCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(LoginFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as DioException,
  ));
}


}

// dart format on
