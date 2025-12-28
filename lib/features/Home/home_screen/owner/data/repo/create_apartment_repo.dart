import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/core/networking/web_services.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/model/create_apartment_request_body.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/model/create_apartment_response_body.dart';

class CreateApartmentRepo {
  WebServices _webServices;

  CreateApartmentRepo(this._webServices);

  Future<ApiResult<CreateApartmentResponseBody>> createApartment(
    CreateApartmentRequestBody createapartmentrequestbody,
  ) async {
    try {
      var response = await _webServices.createApartment(
        type: createapartmentrequestbody.type,
        title: createapartmentrequestbody.title,
        description: createapartmentrequestbody.description,
        price: createapartmentrequestbody.price,
        rooms: createapartmentrequestbody.rooms,
        bathrooms: createapartmentrequestbody.bathrooms,
        city: createapartmentrequestbody.city,
        area: createapartmentrequestbody.area,
        images: createapartmentrequestbody.images,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e);
    }
  }
}
