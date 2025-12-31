import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/core/networking/web_services.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/allapartment_response_body.dart';
import 'package:a7gzle/features/Home/search/data/model/filter_request_body.dart';

class FilteringRepo {
  WebServices _webServices;
  FilteringRepo(this._webServices);

  Future<ApiResult<AllapartmentResponseBody>> filtering(
    FilterRequestBody filterrequestbody,
  ) async {
    try {
      var response = await _webServices.filtering(filterrequestbody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e);
    }
  }
}
