import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_favorite_state.freezed.dart';

@Freezed()
class GetFavoriteState<T> with _$GetFavoriteState {
  const factory GetFavoriteState.getfavoriteinitial() = _GetFavoriteInitial;
  const factory GetFavoriteState.getfavoriteloading() = GetFavoriteLoading;
  const factory GetFavoriteState.getfavoritessuccess(T data) =
      GetFavoriteSuccess;
  const factory GetFavoriteState.getfavoritefailure({required String error}) =
      GetFavoriteFailure;
}
