import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_user_reservations_state.freezed.dart';

@Freezed()
class GetAllUserReservationsState<T> with _$GetAllUserReservationsState {
  const factory GetAllUserReservationsState.initial() = _LogoutInitial;
  const factory GetAllUserReservationsState.reservationsloading() =
      ReservationsLoading;
  const factory GetAllUserReservationsState.reservationssuccess(T data) =
      ReservationsSuccess;
  const factory GetAllUserReservationsState.reservationsfailure({
    required Exception exception,
  }) = ReservationsFailure;
}
