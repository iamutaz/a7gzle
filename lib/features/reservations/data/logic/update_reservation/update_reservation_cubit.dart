import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/reservations/data/logic/update_reservation/update_reservation_state.dart';
import 'package:a7gzle/features/reservations/data/model/update/update_reservation_request_body.dart';
import 'package:a7gzle/features/reservations/data/repo/reservations_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

class UpdateReservationCubit extends Cubit<UpdateReservationState> {
  ReservationsRepo _repo;
  TextEditingController startdatecontroller = TextEditingController();
  TextEditingController enddatecontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  UpdateReservationCubit(this._repo) : super(UpdateReservationState.initial());

  void emitupdatereservation(
    UpdateReservationRequestBody updatereservationrequestbody,
  ) async {
    emit(UpdateReservationState.updatereservationloading());
    final response = await _repo.updatereservation(
      updatereservationrequestbody,
    );
    response.when(
      success: (data) {
        emit(UpdateReservationState.updatereservationsuccess(data));
      },
      failure: (exception) {
        emit(
          UpdateReservationState.updatereservationfailure(exception: exception),
        );
      },
    );
  }
}
