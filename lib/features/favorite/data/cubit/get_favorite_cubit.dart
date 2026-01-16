import 'package:a7gzle/core/networking/api_error_model.dart';
import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:a7gzle/features/favorite/data/cubit/get_favorite_state.dart';
import 'package:a7gzle/features/favorite/data/model/fav_response_body.dart';
import 'package:a7gzle/features/favorite/data/repo/favorite_repo.dart';
import 'package:bloc/bloc.dart';

class GetFavoriteCubit extends Cubit<GetFavoriteState> {
  FavoriteRepo _favoriteRepo;
  GetFavoriteCubit(this._favoriteRepo)
    : super(GetFavoriteState.getfavoriteinitial());

  void getFavorite() async {
    emit(GetFavoriteLoading());
    final response = await _favoriteRepo.getFavorite();
    response.when(
      success: (response) {
        print("success cubit");
        emit(GetFavoriteState.getfavoritessuccess(response));
      },
      failure: (error) {
        print("cubit fail");
        emit(
          GetFavoriteState.getfavoritefailure(
            error: error.apiErrorModel.message ?? "",
          ),
        );
      },
    );
  }
}
