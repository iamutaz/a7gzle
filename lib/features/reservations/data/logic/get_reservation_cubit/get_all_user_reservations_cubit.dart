import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/reservations/data/logic/get_reservation_cubit/get_all_user_reservations_state.dart';
import 'package:a7gzle/features/reservations/data/repo/reservations_repo.dart';
import 'package:bloc/bloc.dart';

class GetAllUserReservationsCubit extends Cubit<GetAllUserReservationsState> {
  final ReservationsRepo _reservationsRepo;
  GetAllUserReservationsCubit(this._reservationsRepo)
    : super(GetAllUserReservationsState.initial());

  void emitGetAllUserReservations() async {
    emit(GetAllUserReservationsState.reservationsloading());
    var respone = await _reservationsRepo.getAllUserReservations();
    respone.when(
      success: (data) {
        emit(GetAllUserReservationsState.reservationssuccess(data));
      },
      failure: (e) {
        emit(GetAllUserReservationsState.reservationsfailure(exception: e));
      },
    );
  }
}
