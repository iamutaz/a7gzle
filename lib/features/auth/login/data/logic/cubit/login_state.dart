import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@Freezed()
class LoginCubitState<T> with _$LoginCubitState {
  const factory LoginCubitState.initial() = _LoginInitial;
  const factory LoginCubitState.loginloading() = LoginLoading;
  const factory LoginCubitState.loginsuccess(T data) = LoginSuccess;
  const factory LoginCubitState.loginfailure({required Exception exception}) =
      LoginFailure;
}
