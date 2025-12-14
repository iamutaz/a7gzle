// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>()';
}


}

/// @nodoc
class $SignUpStateCopyWith<T,$Res>  {
$SignUpStateCopyWith(SignUpState<T> _, $Res Function(SignUpState<T>) __);
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns<T> on SignUpState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SignupInitial<T> value)?  initial,TResult Function( SignupLoading<T> value)?  signuploading,TResult Function( SignupSuccess<T> value)?  signupsuccess,TResult Function( SignupFailure<T> value)?  signupfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupInitial() when initial != null:
return initial(_that);case SignupLoading() when signuploading != null:
return signuploading(_that);case SignupSuccess() when signupsuccess != null:
return signupsuccess(_that);case SignupFailure() when signupfailure != null:
return signupfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SignupInitial<T> value)  initial,required TResult Function( SignupLoading<T> value)  signuploading,required TResult Function( SignupSuccess<T> value)  signupsuccess,required TResult Function( SignupFailure<T> value)  signupfailure,}){
final _that = this;
switch (_that) {
case _SignupInitial():
return initial(_that);case SignupLoading():
return signuploading(_that);case SignupSuccess():
return signupsuccess(_that);case SignupFailure():
return signupfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SignupInitial<T> value)?  initial,TResult? Function( SignupLoading<T> value)?  signuploading,TResult? Function( SignupSuccess<T> value)?  signupsuccess,TResult? Function( SignupFailure<T> value)?  signupfailure,}){
final _that = this;
switch (_that) {
case _SignupInitial() when initial != null:
return initial(_that);case SignupLoading() when signuploading != null:
return signuploading(_that);case SignupSuccess() when signupsuccess != null:
return signupsuccess(_that);case SignupFailure() when signupfailure != null:
return signupfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  signuploading,TResult Function( T data)?  signupsuccess,TResult Function( Exception exception)?  signupfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupInitial() when initial != null:
return initial();case SignupLoading() when signuploading != null:
return signuploading();case SignupSuccess() when signupsuccess != null:
return signupsuccess(_that.data);case SignupFailure() when signupfailure != null:
return signupfailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  signuploading,required TResult Function( T data)  signupsuccess,required TResult Function( Exception exception)  signupfailure,}) {final _that = this;
switch (_that) {
case _SignupInitial():
return initial();case SignupLoading():
return signuploading();case SignupSuccess():
return signupsuccess(_that.data);case SignupFailure():
return signupfailure(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  signuploading,TResult? Function( T data)?  signupsuccess,TResult? Function( Exception exception)?  signupfailure,}) {final _that = this;
switch (_that) {
case _SignupInitial() when initial != null:
return initial();case SignupLoading() when signuploading != null:
return signuploading();case SignupSuccess() when signupsuccess != null:
return signupsuccess(_that.data);case SignupFailure() when signupfailure != null:
return signupfailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _SignupInitial<T> implements SignUpState<T> {
  const _SignupInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.initial()';
}


}




/// @nodoc


class SignupLoading<T> implements SignUpState<T> {
  const SignupLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.signuploading()';
}


}




/// @nodoc


class SignupSuccess<T> implements SignUpState<T> {
  const SignupSuccess(this.data);
  

 final  T data;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupSuccessCopyWith<T, SignupSuccess<T>> get copyWith => _$SignupSuccessCopyWithImpl<T, SignupSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SignUpState<$T>.signupsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignupSuccessCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $SignupSuccessCopyWith(SignupSuccess<T> value, $Res Function(SignupSuccess<T>) _then) = _$SignupSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SignupSuccessCopyWithImpl<T,$Res>
    implements $SignupSuccessCopyWith<T, $Res> {
  _$SignupSuccessCopyWithImpl(this._self, this._then);

  final SignupSuccess<T> _self;
  final $Res Function(SignupSuccess<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SignupSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SignupFailure<T> implements SignUpState<T> {
  const SignupFailure({required this.exception});
  

 final  Exception exception;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupFailureCopyWith<T, SignupFailure<T>> get copyWith => _$SignupFailureCopyWithImpl<T, SignupFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupFailure<T>&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'SignUpState<$T>.signupfailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $SignupFailureCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory $SignupFailureCopyWith(SignupFailure<T> value, $Res Function(SignupFailure<T>) _then) = _$SignupFailureCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$SignupFailureCopyWithImpl<T,$Res>
    implements $SignupFailureCopyWith<T, $Res> {
  _$SignupFailureCopyWithImpl(this._self, this._then);

  final SignupFailure<T> _self;
  final $Res Function(SignupFailure<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(SignupFailure<T>(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
