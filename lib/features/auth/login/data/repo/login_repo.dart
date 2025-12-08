import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/core/networking/web_services.dart';
import 'package:a7gzle/features/auth/login/data/model/login_request_body.dart';
import 'package:a7gzle/features/auth/login/data/model/login_response_body.dart';
import 'package:dio/dio.dart';

class LoginRepo {
  final WebServices _webServices;
  LoginRepo(this._webServices);

  Future<ApiResult<LoginResponseBody>> login(
    LoginRequestBody loginrequestbody,
  ) async {
    try {
      var response = await _webServices.login(loginrequestbody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error as DioException);
    }
  }
}
