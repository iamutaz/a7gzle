import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/notification/data/cubit/owner_reservation_state.dart';
import 'package:a7gzle/features/notification/data/repo/owner_notification_repo.dart';
import 'package:bloc/bloc.dart';

class OwnerReservationCubit extends Cubit<OwnerReservationState> {
  OwnerNotificationRepo _repo;

  OwnerReservationCubit(this._repo)
    : super(OwnerReservationState.ownerreservationinitial());

  void emitGetOwnerReservation() async {
    emit(OwnerReservationState.ownerreservationloading());
    final response = await _repo.ownerreservations();
    response.when(
      success: (data) {
        emit(OwnerReservationState.ownerreservationsuccess(data));
      },
      failure: (error) {
        emit(
          OwnerReservationState.ownerreservationfailure(
            error: error.apiErrorModel.message ?? "",
          ),
        );
      },
    );
  }
}
