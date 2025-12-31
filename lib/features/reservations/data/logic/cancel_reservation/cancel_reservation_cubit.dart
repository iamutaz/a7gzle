import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/reservations/data/logic/cancel_reservation/cancel_reservation_state.dart';
import 'package:a7gzle/features/reservations/data/model/cancel_reservation_request_body.dart';
import 'package:a7gzle/features/reservations/data/repo/reservations_repo.dart';
import 'package:bloc/bloc.dart';

class CancelReservationCubit extends Cubit<CancelReservationState> {
  ReservationsRepo _reservationsRepo;
  CancelReservationCubit(this._reservationsRepo)
    : super(CancelReservationState.initial());

  void emitcancelreservation(
    CancelReservationRequestBody cancerlreservationrequestbody,
  ) async {
    emit(CancelReservationsLoading());
    final response = await _reservationsRepo.cancelreservation(
      cancerlreservationrequestbody,
    );
    response.when(
      success: (data) {
        emit(CancelReservationsSuccess(data));
      },
      failure: (exception) {
        emit(CancelReservationsFailure(exception: exception));
      },
    );
  }
}
