import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/favorite_state.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/favorite_request.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/repo/all_apartment_repo.dart';
import 'package:bloc/bloc.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  AllApartmentRepo _repo;
  Set<int> favoriteIds = {};
  FavoriteCubit(this._repo) : super(FavoriteState.favoriteinitial());

  void emittogglefavorite(FavoriteRequest favrequest) async {
    emit(FavoriteState.favoriteloading());
    final response = await _repo.togglefavorite(favrequest);
    response.when(
      success: (data) {
        if (data.message == "Is favourite") {
          favoriteIds.add(favrequest.apartmentid);
        } else {
          favoriteIds.remove(favrequest.apartmentid);
        }
        emit(FavoriteState.favoritesuccess(data));
      },
      failure: (error) {
        emit(
          FavoriteState.favoritefailure(
            error: error.apiErrorModel.message ?? "",
          ),
        );
      },
    );
  }

  bool isFavorite(int apartmentId) {
    return favoriteIds.contains(apartmentId);
  }
}
