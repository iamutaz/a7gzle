import 'package:a7gzle/core/networking/api_constant.dart';
import 'package:a7gzle/features/auth/login/data/model/login_request_body.dart';
import 'package:a7gzle/features/auth/login/data/model/login_response_body.dart';
import 'package:a7gzle/features/auth/signup/data/model/signupresponsebody.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: ApiConstant.baseurl)
abstract class WebServices {
  factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;

  @POST(ApiConstant.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginrequestbody);

  @POST(ApiConstant.signup)
  @MultiPart()
  Future<Signupresponsebody> signup({
    @Part(name: "first_name") required String firstname,
    @Part(name: "last_name") required String lastname,
    @Part(name: "birthdate") required String birthdate,
    @Part(name: "number") required String number,
    @Part(name: "type") required String type,
    @Part(name: "password") required String password,
    @Part(name: 'password_confirmation') required String passwordConfirmation,

    @Part(name: 'profile_photo') required MultipartFile profilePhoto,
    @Part(name: 'id_photo_back') required MultipartFile idPhotoBack,
    @Part(name: 'id_photo_front') required MultipartFile idPhotoFront,
  });
}
