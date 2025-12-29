import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_apartment_state.freezed.dart';

@Freezed()
class CreateApartmentState<T> with _$CreateApartmentState<T> {
  const factory CreateApartmentState.initial() = _CreateApartmentStateInitial;
  const factory CreateApartmentState.createapartmentloading() =
      CreateApartmentStateLoading;
  const factory CreateApartmentState.createapartmentsuccess(T data) =
      CreateApartmentStateSuccess;
  const factory CreateApartmentState.createapartmentfailure({
    required dynamic exception,
  }) = CreateApartmentStateFailure;
}
