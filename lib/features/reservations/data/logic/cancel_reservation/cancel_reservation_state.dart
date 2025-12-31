import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_reservation_state.freezed.dart';

@Freezed()
class CancelReservationState<T> with _$CancelReservationState {
  const factory CancelReservationState.initial() = _CancelReservationInitial;
  const factory CancelReservationState.cancelreservationloading() =
      CancelReservationsLoading;
  const factory CancelReservationState.cancelreservationsuccess(T data) =
      CancelReservationsSuccess;
  const factory CancelReservationState.cancelreservationfailure({
    required Exception exception,
  }) = CancelReservationsFailure;
}
