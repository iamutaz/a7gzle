import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/core/networking/web_services.dart';
import 'package:a7gzle/features/Home/settings/data/model/logout_response_body.dart';

class LogoutRepo {
  final WebServices _webServices;

  LogoutRepo(this._webServices);

  Future<ApiResult<LogoutResponseBody>> logout() async {
    try {
      var response = await _webServices.logout();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error);
    }
  }
}
