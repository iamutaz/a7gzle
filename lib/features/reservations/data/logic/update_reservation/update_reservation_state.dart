import "package:freezed_annotation/freezed_annotation.dart";

part 'update_reservation_state.freezed.dart';

@Freezed()
class UpdateReservationState<T> with _$UpdateReservationState {
  const factory UpdateReservationState.initial() = _UpdateReservationIntial;
  const factory UpdateReservationState.updatereservationloading() =
      UpdatedReservationLoading;
  const factory UpdateReservationState.updatereservationsuccess(T data) =
      UpdateReservationSuccess;
  const factory UpdateReservationState.updatereservationfailure({
    required Exception exception,
  }) = UpdateReservationFailure;
}
