import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

@Freezed()
class FavoriteState<T> with _$FavoriteState<T> {
  const factory FavoriteState.favoriteinitial() = _FavoriteInitial;
  const factory FavoriteState.favoriteloading() = FavoriteLoading;
  const factory FavoriteState.favoritesuccess(T data) = FavoriteSuccess;
  const factory FavoriteState.favoritefailure({required String error}) =
      FavoriteFailure;
}
