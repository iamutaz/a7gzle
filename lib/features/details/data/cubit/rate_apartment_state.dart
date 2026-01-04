import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_apartment_state.freezed.dart';

@Freezed()
class RateApartmentState<T> with _$RateApartmentState {
  const factory RateApartmentState.initial() = _RatingInitial;
  const factory RateApartmentState.ratingloading() = RatingLoading;
  const factory RateApartmentState.ratingsuccess(T data) = RatingSuccess;
  const factory RateApartmentState.ratingfailure({
    required Exception exception,
  }) = RatingFailure;
}
