import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@Freezed()
class SignUpState<T> with _$SignUpState {
  const factory SignUpState.initial() = _SignupInitial;
  const factory SignUpState.signuploading() = SignupLoading;
  const factory SignUpState.signupsuccess(T data) = SignupSuccess;
  const factory SignUpState.signupfailure({required Exception exception}) =
      SignupFailure;
}
