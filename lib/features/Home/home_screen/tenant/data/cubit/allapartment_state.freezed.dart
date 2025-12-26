// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allapartment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AllapartmentState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllapartmentState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllapartmentState<$T>()';
}


}

/// @nodoc
class $AllapartmentStateCopyWith<T,$Res>  {
$AllapartmentStateCopyWith(AllapartmentState<T> _, $Res Function(AllapartmentState<T>) __);
}


/// Adds pattern-matching-related methods to [AllapartmentState].
extension AllapartmentStatePatterns<T> on AllapartmentState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AllapartmentInitial<T> value)?  initial,TResult Function( AllapartmentLoading<T> value)?  allapartmentloading,TResult Function( AllapartmentSuccess<T> value)?  allapartmentsuccess,TResult Function( AllaprtmentFailure<T> value)?  allapartmentfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AllapartmentInitial() when initial != null:
return initial(_that);case AllapartmentLoading() when allapartmentloading != null:
return allapartmentloading(_that);case AllapartmentSuccess() when allapartmentsuccess != null:
return allapartmentsuccess(_that);case AllaprtmentFailure() when allapartmentfailure != null:
return allapartmentfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AllapartmentInitial<T> value)  initial,required TResult Function( AllapartmentLoading<T> value)  allapartmentloading,required TResult Function( AllapartmentSuccess<T> value)  allapartmentsuccess,required TResult Function( AllaprtmentFailure<T> value)  allapartmentfailure,}){
final _that = this;
switch (_that) {
case _AllapartmentInitial():
return initial(_that);case AllapartmentLoading():
return allapartmentloading(_that);case AllapartmentSuccess():
return allapartmentsuccess(_that);case AllaprtmentFailure():
return allapartmentfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AllapartmentInitial<T> value)?  initial,TResult? Function( AllapartmentLoading<T> value)?  allapartmentloading,TResult? Function( AllapartmentSuccess<T> value)?  allapartmentsuccess,TResult? Function( AllaprtmentFailure<T> value)?  allapartmentfailure,}){
final _that = this;
switch (_that) {
case _AllapartmentInitial() when initial != null:
return initial(_that);case AllapartmentLoading() when allapartmentloading != null:
return allapartmentloading(_that);case AllapartmentSuccess() when allapartmentsuccess != null:
return allapartmentsuccess(_that);case AllaprtmentFailure() when allapartmentfailure != null:
return allapartmentfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  allapartmentloading,TResult Function( T data)?  allapartmentsuccess,TResult Function( dynamic exception)?  allapartmentfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AllapartmentInitial() when initial != null:
return initial();case AllapartmentLoading() when allapartmentloading != null:
return allapartmentloading();case AllapartmentSuccess() when allapartmentsuccess != null:
return allapartmentsuccess(_that.data);case AllaprtmentFailure() when allapartmentfailure != null:
return allapartmentfailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  allapartmentloading,required TResult Function( T data)  allapartmentsuccess,required TResult Function( dynamic exception)  allapartmentfailure,}) {final _that = this;
switch (_that) {
case _AllapartmentInitial():
return initial();case AllapartmentLoading():
return allapartmentloading();case AllapartmentSuccess():
return allapartmentsuccess(_that.data);case AllaprtmentFailure():
return allapartmentfailure(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  allapartmentloading,TResult? Function( T data)?  allapartmentsuccess,TResult? Function( dynamic exception)?  allapartmentfailure,}) {final _that = this;
switch (_that) {
case _AllapartmentInitial() when initial != null:
return initial();case AllapartmentLoading() when allapartmentloading != null:
return allapartmentloading();case AllapartmentSuccess() when allapartmentsuccess != null:
return allapartmentsuccess(_that.data);case AllaprtmentFailure() when allapartmentfailure != null:
return allapartmentfailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _AllapartmentInitial<T> implements AllapartmentState<T> {
  const _AllapartmentInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllapartmentInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllapartmentState<$T>.initial()';
}


}




/// @nodoc


class AllapartmentLoading<T> implements AllapartmentState<T> {
  const AllapartmentLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllapartmentLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllapartmentState<$T>.allapartmentloading()';
}


}




/// @nodoc


class AllapartmentSuccess<T> implements AllapartmentState<T> {
  const AllapartmentSuccess(this.data);
  

 final  T data;

/// Create a copy of AllapartmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllapartmentSuccessCopyWith<T, AllapartmentSuccess<T>> get copyWith => _$AllapartmentSuccessCopyWithImpl<T, AllapartmentSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllapartmentSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AllapartmentState<$T>.allapartmentsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $AllapartmentSuccessCopyWith<T,$Res> implements $AllapartmentStateCopyWith<T, $Res> {
  factory $AllapartmentSuccessCopyWith(AllapartmentSuccess<T> value, $Res Function(AllapartmentSuccess<T>) _then) = _$AllapartmentSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$AllapartmentSuccessCopyWithImpl<T,$Res>
    implements $AllapartmentSuccessCopyWith<T, $Res> {
  _$AllapartmentSuccessCopyWithImpl(this._self, this._then);

  final AllapartmentSuccess<T> _self;
  final $Res Function(AllapartmentSuccess<T>) _then;

/// Create a copy of AllapartmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(AllapartmentSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class AllaprtmentFailure<T> implements AllapartmentState<T> {
  const AllaprtmentFailure({required this.exception});
  

 final  dynamic exception;

/// Create a copy of AllapartmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllaprtmentFailureCopyWith<T, AllaprtmentFailure<T>> get copyWith => _$AllaprtmentFailureCopyWithImpl<T, AllaprtmentFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllaprtmentFailure<T>&&const DeepCollectionEquality().equals(other.exception, exception));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(exception));

@override
String toString() {
  return 'AllapartmentState<$T>.allapartmentfailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $AllaprtmentFailureCopyWith<T,$Res> implements $AllapartmentStateCopyWith<T, $Res> {
  factory $AllaprtmentFailureCopyWith(AllaprtmentFailure<T> value, $Res Function(AllaprtmentFailure<T>) _then) = _$AllaprtmentFailureCopyWithImpl;
@useResult
$Res call({
 dynamic exception
});




}
/// @nodoc
class _$AllaprtmentFailureCopyWithImpl<T,$Res>
    implements $AllaprtmentFailureCopyWith<T, $Res> {
  _$AllaprtmentFailureCopyWithImpl(this._self, this._then);

  final AllaprtmentFailure<T> _self;
  final $Res Function(AllaprtmentFailure<T>) _then;

/// Create a copy of AllapartmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(AllaprtmentFailure<T>(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
