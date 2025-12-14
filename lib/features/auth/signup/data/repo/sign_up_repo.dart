import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/core/networking/web_services.dart';
import 'package:a7gzle/features/auth/signup/data/model/signup_request_body.dart';
import 'package:a7gzle/features/auth/signup/data/model/signupresponsebody.dart';

class SignUpRepo {
  // ignore: prefer_final_fields
  WebServices _webServices;
  SignUpRepo(this._webServices);

  Future<ApiResult<Signupresponsebody>> signup(
    SignupRequestBody signuprequestbody,
  ) async {
    try {
      var response = await _webServices.signup(
        firstname: signuprequestbody.firstname,
        lastname: signuprequestbody.lastname,
        birthdate: signuprequestbody.birthdate,
        number: signuprequestbody.number,
        type: signuprequestbody.type,
        password: signuprequestbody.password,
        passwordConfirmation: signuprequestbody.passwordconfirmation,
        profilePhoto: signuprequestbody.profileimage,
        idPhotoBack: signuprequestbody.backid,
        idPhotoFront: signuprequestbody.frontid,
      );

      print("sucess in repo");

      return ApiResult.success(response);
    } catch (error) {
      print("fail in repo");
      return ApiResult.failure(error);
    }
  }
}
