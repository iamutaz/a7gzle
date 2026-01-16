import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_search_card.dart';
import 'package:a7gzle/core/widgets/searched_apartment_card_model.dart';
import 'package:a7gzle/features/favorite/data/cubit/get_favorite_cubit.dart';
import 'package:a7gzle/features/favorite/data/cubit/get_favorite_state.dart';
import 'package:a7gzle/features/favorite/data/model/fav_response_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  void initState() {
    super.initState();
    context.read<GetFavoriteCubit>().getFavorite();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorite".tr())),

      body: BlocBuilder<GetFavoriteCubit, GetFavoriteState>(
        builder: (context, state) {
          return state.when(
            getfavoriteinitial: () => SizedBox.shrink(),
            getfavoriteloading: () =>
                Center(child: CircularProgressIndicator()),
            getfavoritessuccess: (data) {
              FavResponseBody favoriteaparment = data;
              return favoriteaparment.data.isNotEmpty
                  ? ListView.builder(
                      itemCount: favoriteaparment.data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0.h),
                          child: GestureDetector(
                            onTap: () => context.pushNamed(
                              RoutesConstant.details,
                              aurgment: favoriteaparment.data[index],
                            ),
                            child: AppSearchCard(
                              searchedApartmentCardModel:
                                  SearchedApartmentCardModel(
                                    apartmentname:
                                        favoriteaparment.data[index].title,
                                    city: favoriteaparment.data[index].city,
                                    imagepath: favoriteaparment
                                        .data[index]
                                        .images
                                        .first
                                        .path,
                                    price: favoriteaparment.data[index].price,
                                  ),
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        "Try add some !!".tr(),
                        style: TextStyles.font16labelblackmideum,
                      ),
                    );
            },
            getfavoritefailure: (error) {
              return Center(child: Text("not working".tr()));
            },
          );
        },
      ),
    );
  }
}
