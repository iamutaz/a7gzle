import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_reservation_state.freezed.dart';

@Freezed()
class OwnerReservationState<T> with _$OwnerReservationState {
  const factory OwnerReservationState.ownerreservationinitial() =
      _OwnerReservationInitial;
  const factory OwnerReservationState.ownerreservationloading() =
      OwnerReservationLoading;
  const factory OwnerReservationState.ownerreservationsuccess(T data) =
      OwnerReservationSuccess;
  const factory OwnerReservationState.ownerreservationfailure({
    required String error,
  }) = OwnerReservationFailure;
}
