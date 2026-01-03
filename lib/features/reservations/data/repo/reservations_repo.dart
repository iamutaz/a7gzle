import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/core/networking/web_services.dart';
import 'package:a7gzle/features/reservations/data/model/cancel/cancel_reservation_request_body.dart';
import 'package:a7gzle/features/reservations/data/model/cancel/cancel_reservation_response_body.dart';
import 'package:a7gzle/features/reservations/data/model/update/update_reservation_request_body.dart';
import 'package:a7gzle/features/reservations/data/model/update/update_reservation_response_body.dart';
import 'package:a7gzle/features/reservations/data/model/user_reservations_response_body.dart';

class ReservationsRepo {
  WebServices _webServices;
  ReservationsRepo(this._webServices);

  Future<ApiResult<UserReservationsResponseBody>>
  getAllUserReservations() async {
    try {
      var response = await _webServices.getAllUserReservations();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e);
    }
  }

  Future<ApiResult<CancelReservationResponseBody>> cancelreservation(
    CancelReservationRequestBody cancelreservationrequestbody,
  ) async {
    try {
      var response = await _webServices.cancelreservation(
        cancelreservationrequestbody,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e);
    }
  }

  Future<ApiResult<UpdateReservationResponseBody>> updatereservation(
    UpdateReservationRequestBody updatereservationrequestbody,
  ) async {
    try {
      final response = await _webServices.updatereservation(
        updatereservationrequestbody,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e);
    }
  }
}
