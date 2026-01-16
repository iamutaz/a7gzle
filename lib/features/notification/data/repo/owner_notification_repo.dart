import 'package:a7gzle/core/networking/api_error_handler.dart';
import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/core/networking/web_services.dart';
import 'package:a7gzle/features/notification/data/model/owner_reservation_response_body.dart';
import 'package:a7gzle/features/notification/data/model/reservation_notification_request_body.dart';
import 'package:a7gzle/features/notification/data/model/reservation_notification_response_body.dart';

class OwnerNotificationRepo {
  WebServices _webServices;

  OwnerNotificationRepo(this._webServices);

  Future<ApiResult<OwnerReservationResponseBody>> ownerreservations() async {
    try {
      final response = await _webServices.ownerreservations();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<ReservationNotificationResponseBody>> handlingReservation(
    ReservationNotificationRequestBody request,
  ) async {
    try {
      final response = await _webServices.handlingReservation(request);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
