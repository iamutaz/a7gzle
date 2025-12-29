import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/core/networking/web_services.dart';
import 'package:a7gzle/features/details/data/model/booking_request_body.dart';
import 'package:a7gzle/features/details/data/model/booking_response_body.dart';

class BookRepo {
  WebServices _webServices;

  BookRepo(this._webServices);

  Future<ApiResult<BookingResponseBody>> bookapartment(
    BookingRequestBody bookingrequestbody,
  ) async {
    try {
      final respose = await _webServices.bookapartment(bookingrequestbody);
      print("success in repo");
      return ApiResult.success(respose);
    } catch (e) {
      print("fail in repo");
      return ApiResult.failure(e);
    }
  }
}
