import 'dart:ui';
import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/favorite_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/favorite_state.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/favorite_request.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class topCard extends StatelessWidget {
  const topCard({super.key, required this.apartment});
  final Apartment apartment;

  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 340,
      margin: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {
          context.pushNamed(RoutesConstant.details, aurgment: apartment);
        },
        child: Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),

              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.5, 1.0],
                  colors: [Colors.transparent, Colors.black.withOpacity(0.9)],
                ),
              ),
              child:
                  apartment.images.isNotEmpty &&
                      apartment.images.first.path.isNotEmpty
                  ? FadeInImage.assetNetwork(
                      width: double.infinity,
                      height: double.infinity,
                      placeholder: 'assets/loading.gif',
                      image: apartment.images.first.path,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/notload.jpeg',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
            ),

            // معلومات الشقة
            Positioned.directional(
              textDirection: Directionality.of(context),
              start: 16,
              end: 65,
              bottom: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    apartment.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font18blackbold.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      shadows: [Shadow(color: Colors.black45, blurRadius: 2)],
                    ),
                  ),
                  Text(
                    apartment.city,
                    style: TextStyles.font14neartograymiduem.copyWith(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    apartment.price,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // مربع التقييم
            Positioned.directional(
              textDirection: Directionality.of(context),
              top: 12,
              end: 12,
              child: _buildRateWidget(context),
            ),

            // زر المفضلة
            Positioned.directional(
              textDirection: Directionality.of(context),
              bottom: 16,
              end: 16,
              child: BlocBuilder<FavoriteCubit, FavoriteState>(
                builder: (context, state) {
                  final cubit = context.read<FavoriteCubit>();

                  return _buildFavoriteButton(cubit);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildRateWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor.withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.star, color: Colors.orange, size: 14),
          const SizedBox(width: 4),
          Text(
            apartment.rate == null ? "not rated yet" : "${apartment.rate}",
            style: const TextStyle(
              color: Color(0xff246BFD),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFavoriteButton(FavoriteCubit cubit) {
    return GestureDetector(
      onTap: () {
        cubit.emittogglefavorite(FavoriteRequest(apartmentid: apartment.id));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.25),
              shape: BoxShape.circle,
            ),
            child: Icon(
              cubit.isFavorite(apartment.id)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: cubit.isFavorite(apartment.id) ? Colors.red : Colors.white,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
