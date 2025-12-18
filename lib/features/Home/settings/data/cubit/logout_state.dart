import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_state.freezed.dart';

@Freezed()
class LogoutState<T> with _$LogoutState {
  const factory LogoutState.initial() = _LogoutInitial;
  const factory LogoutState.logoutloading() = LogoutLoading;
  const factory LogoutState.logoutuccess(T data) = LogoutSuccess;
  const factory LogoutState.logoutfailure({required Exception exception}) =
      LogoutFailure;
}
