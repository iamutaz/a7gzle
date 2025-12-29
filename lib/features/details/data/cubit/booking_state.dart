import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_state.freezed.dart';

@Freezed()
class BookingState<T> with _$BookingState {
  const factory BookingState.initial() = _BookingInitial;
  const factory BookingState.bookingloading() = BookingLoading;
  const factory BookingState.bookingsuccess(T data) = BookingSuccess;
  const factory BookingState.bookingfailure({required Exception exception}) =
      BookingFailure;
}
