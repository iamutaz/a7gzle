import 'package:freezed_annotation/freezed_annotation.dart';

part 'allapartment_state.freezed.dart';

@Freezed()
class AllapartmentState<T> with _$AllapartmentState<T> {
  const factory AllapartmentState.initial() = _AllapartmentInitial;
  const factory AllapartmentState.allapartmentloading() = AllapartmentLoading;
  const factory AllapartmentState.allapartmentsuccess(T data) =
      AllapartmentSuccess;
  const factory AllapartmentState.allapartmentfailure({
    required dynamic exception,
  }) = AllaprtmentFailure;
}
