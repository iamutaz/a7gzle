import 'package:freezed_annotation/freezed_annotation.dart';

part 'handling_reservation_state.freezed.dart';

@Freezed()
class HandlingReservationState<T> with _$HandlingReservationState {
  const factory HandlingReservationState.handlingreservationinitail() =
      _HandlingReservationInitial;
  const factory HandlingReservationState.handlingreservationloading() =
      HandlingReservationLoading;
  const factory HandlingReservationState.handlingreservationsuccess(T data) =
      HandlingReservationSuccess;
  const factory HandlingReservationState.handlingreservationfailure({
    required String error,
  }) = HandlingReservationFailure;
}
