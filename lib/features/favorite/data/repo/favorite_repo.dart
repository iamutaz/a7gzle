import 'package:a7gzle/core/networking/api_error_handler.dart';
import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/core/networking/web_services.dart';
import 'package:a7gzle/features/favorite/data/model/fav_response_body.dart';

class FavoriteRepo {
  WebServices _webServices;
  FavoriteRepo(this._webServices);

  Future<ApiResult<FavResponseBody>> getFavorite() async {
    try {
      final response = await _webServices.getfavorite();
      print("success repo");
      return ApiResult.success(response);
    } catch (e) {
      print("fail repo");
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
