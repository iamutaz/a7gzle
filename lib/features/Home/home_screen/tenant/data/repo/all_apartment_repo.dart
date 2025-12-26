import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/core/networking/web_services.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/allapartment_response_body.dart';

class AllApartmentRepo {
  WebServices _webServices;

  AllApartmentRepo(this._webServices);

  Future<ApiResult<AllapartmentResponseBody>> getAllApartment() async {
    try {
      print("succes in repo");
      final response = await _webServices.getAllApartment();
      return ApiResult.success(response);
    } catch (e) {
      print("fail in repo");

      return ApiResult.failure(e);
    }
  }
}
