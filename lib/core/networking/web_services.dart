import 'package:a7gzle/core/networking/api_constant.dart';
import 'package:a7gzle/features/auth/login/data/model/login_request_body.dart';
import 'package:a7gzle/features/auth/login/data/model/login_response_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: ApiConstant.baseurl)
abstract class WebServices {
  factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;

  @POST(ApiConstant.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginrequestbody);
}
