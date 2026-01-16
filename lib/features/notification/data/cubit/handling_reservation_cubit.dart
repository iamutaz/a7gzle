import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/notification/data/cubit/handling_reservation_state.dart';
import 'package:a7gzle/features/notification/data/model/reservation_notification_request_body.dart';
import 'package:a7gzle/features/notification/data/repo/owner_notification_repo.dart';
import 'package:bloc/bloc.dart';

class HandlingReservationCubit extends Cubit<HandlingReservationState> {
  OwnerNotificationRepo _repo;
  HandlingReservationCubit(this._repo)
    : super(HandlingReservationState.handlingreservationinitail());

  void emitHandlingreservation(
    ReservationNotificationRequestBody request,
  ) async {
    emit(HandlingReservationState.handlingreservationloading());
    final response = await _repo.handlingReservation(request);
    response.when(
      success: (data) {
        emit(HandlingReservationState.handlingreservationsuccess(data));
      },
      failure: (error) {
        emit(
          HandlingReservationState.handlingreservationfailure(
            error: error.apiErrorModel.message ?? "",
          ),
        );
      },
    );
  }
}
