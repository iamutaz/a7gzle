// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_apartment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateApartmentState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateApartmentState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateApartmentState<$T>()';
}


}

/// @nodoc
class $CreateApartmentStateCopyWith<T,$Res>  {
$CreateApartmentStateCopyWith(CreateApartmentState<T> _, $Res Function(CreateApartmentState<T>) __);
}


/// Adds pattern-matching-related methods to [CreateApartmentState].
extension CreateApartmentStatePatterns<T> on CreateApartmentState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateApartmentStateInitial<T> value)?  initial,TResult Function( CreateApartmentStateLoading<T> value)?  createapartmentloading,TResult Function( CreateApartmentStateSuccess<T> value)?  createapartmentsuccess,TResult Function( CreateApartmentStateFailure<T> value)?  createapartmentfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateApartmentStateInitial() when initial != null:
return initial(_that);case CreateApartmentStateLoading() when createapartmentloading != null:
return createapartmentloading(_that);case CreateApartmentStateSuccess() when createapartmentsuccess != null:
return createapartmentsuccess(_that);case CreateApartmentStateFailure() when createapartmentfailure != null:
return createapartmentfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateApartmentStateInitial<T> value)  initial,required TResult Function( CreateApartmentStateLoading<T> value)  createapartmentloading,required TResult Function( CreateApartmentStateSuccess<T> value)  createapartmentsuccess,required TResult Function( CreateApartmentStateFailure<T> value)  createapartmentfailure,}){
final _that = this;
switch (_that) {
case _CreateApartmentStateInitial():
return initial(_that);case CreateApartmentStateLoading():
return createapartmentloading(_that);case CreateApartmentStateSuccess():
return createapartmentsuccess(_that);case CreateApartmentStateFailure():
return createapartmentfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateApartmentStateInitial<T> value)?  initial,TResult? Function( CreateApartmentStateLoading<T> value)?  createapartmentloading,TResult? Function( CreateApartmentStateSuccess<T> value)?  createapartmentsuccess,TResult? Function( CreateApartmentStateFailure<T> value)?  createapartmentfailure,}){
final _that = this;
switch (_that) {
case _CreateApartmentStateInitial() when initial != null:
return initial(_that);case CreateApartmentStateLoading() when createapartmentloading != null:
return createapartmentloading(_that);case CreateApartmentStateSuccess() when createapartmentsuccess != null:
return createapartmentsuccess(_that);case CreateApartmentStateFailure() when createapartmentfailure != null:
return createapartmentfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  createapartmentloading,TResult Function( T data)?  createapartmentsuccess,TResult Function( dynamic exception)?  createapartmentfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateApartmentStateInitial() when initial != null:
return initial();case CreateApartmentStateLoading() when createapartmentloading != null:
return createapartmentloading();case CreateApartmentStateSuccess() when createapartmentsuccess != null:
return createapartmentsuccess(_that.data);case CreateApartmentStateFailure() when createapartmentfailure != null:
return createapartmentfailure(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  createapartmentloading,required TResult Function( T data)  createapartmentsuccess,required TResult Function( dynamic exception)  createapartmentfailure,}) {final _that = this;
switch (_that) {
case _CreateApartmentStateInitial():
return initial();case CreateApartmentStateLoading():
return createapartmentloading();case CreateApartmentStateSuccess():
return createapartmentsuccess(_that.data);case CreateApartmentStateFailure():
return createapartmentfailure(_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  createapartmentloading,TResult? Function( T data)?  createapartmentsuccess,TResult? Function( dynamic exception)?  createapartmentfailure,}) {final _that = this;
switch (_that) {
case _CreateApartmentStateInitial() when initial != null:
return initial();case CreateApartmentStateLoading() when createapartmentloading != null:
return createapartmentloading();case CreateApartmentStateSuccess() when createapartmentsuccess != null:
return createapartmentsuccess(_that.data);case CreateApartmentStateFailure() when createapartmentfailure != null:
return createapartmentfailure(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _CreateApartmentStateInitial<T> implements CreateApartmentState<T> {
  const _CreateApartmentStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateApartmentStateInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateApartmentState<$T>.initial()';
}


}




/// @nodoc


class CreateApartmentStateLoading<T> implements CreateApartmentState<T> {
  const CreateApartmentStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateApartmentStateLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateApartmentState<$T>.createapartmentloading()';
}


}




/// @nodoc


class CreateApartmentStateSuccess<T> implements CreateApartmentState<T> {
  const CreateApartmentStateSuccess(this.data);
  

 final  T data;

/// Create a copy of CreateApartmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateApartmentStateSuccessCopyWith<T, CreateApartmentStateSuccess<T>> get copyWith => _$CreateApartmentStateSuccessCopyWithImpl<T, CreateApartmentStateSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateApartmentStateSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CreateApartmentState<$T>.createapartmentsuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $CreateApartmentStateSuccessCopyWith<T,$Res> implements $CreateApartmentStateCopyWith<T, $Res> {
  factory $CreateApartmentStateSuccessCopyWith(CreateApartmentStateSuccess<T> value, $Res Function(CreateApartmentStateSuccess<T>) _then) = _$CreateApartmentStateSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$CreateApartmentStateSuccessCopyWithImpl<T,$Res>
    implements $CreateApartmentStateSuccessCopyWith<T, $Res> {
  _$CreateApartmentStateSuccessCopyWithImpl(this._self, this._then);

  final CreateApartmentStateSuccess<T> _self;
  final $Res Function(CreateApartmentStateSuccess<T>) _then;

/// Create a copy of CreateApartmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(CreateApartmentStateSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class CreateApartmentStateFailure<T> implements CreateApartmentState<T> {
  const CreateApartmentStateFailure({required this.exception});
  

 final  dynamic exception;

/// Create a copy of CreateApartmentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateApartmentStateFailureCopyWith<T, CreateApartmentStateFailure<T>> get copyWith => _$CreateApartmentStateFailureCopyWithImpl<T, CreateApartmentStateFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateApartmentStateFailure<T>&&const DeepCollectionEquality().equals(other.exception, exception));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(exception));

@override
String toString() {
  return 'CreateApartmentState<$T>.createapartmentfailure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $CreateApartmentStateFailureCopyWith<T,$Res> implements $CreateApartmentStateCopyWith<T, $Res> {
  factory $CreateApartmentStateFailureCopyWith(CreateApartmentStateFailure<T> value, $Res Function(CreateApartmentStateFailure<T>) _then) = _$CreateApartmentStateFailureCopyWithImpl;
@useResult
$Res call({
 dynamic exception
});




}
/// @nodoc
class _$CreateApartmentStateFailureCopyWithImpl<T,$Res>
    implements $CreateApartmentStateFailureCopyWith<T, $Res> {
  _$CreateApartmentStateFailureCopyWithImpl(this._self, this._then);

  final CreateApartmentStateFailure<T> _self;
  final $Res Function(CreateApartmentStateFailure<T>) _then;

/// Create a copy of CreateApartmentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(CreateApartmentStateFailure<T>(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
