import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/favorite_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/favorite_state.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart'; // الموديل الجديد
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/favorite_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Downcard extends StatelessWidget {
  const Downcard({super.key, required this.apartment});
  final Apartment apartment;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        context.pushNamed(RoutesConstant.details, aurgment: apartment);
      },
      child: Container(
        width: 187,
        height: 275,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorsManager.offwhite(context),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.network(
               
                    apartment.images.isNotEmpty ? apartment.images[0].path : "", 
                    height: 154,
                    width: 187,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: ColorsManager.offwhite(context),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star, color: Colors.orange, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          apartment.rate?.toString() ?? "--",
                          style: TextStyles.font14blackmideum.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: ColorsManager.mainBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                apartment.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font14blackmideum.copyWith(
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.lightblack(context),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                apartment.city,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font14neartograymiduem.copyWith(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${apartment.price}",
                    style: TextStyles.font18blackbold.copyWith(
                      fontSize: 16,
                      color: ColorsManager.mainBlue,
                    ),
                  ),
                  BlocBuilder<FavoriteCubit, FavoriteState>(
                    builder: (context, state) {
                      final cubit = context.read<FavoriteCubit>();
                      return GestureDetector(
                        onTap: () {
                          context.read<FavoriteCubit>().emittogglefavorite(
                            FavoriteRequest(apartmentid: apartment.id),
                          );
                        },
                        child: Icon(
                          cubit.isFavorite(apartment.id)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: cubit.isFavorite(apartment.id)
                              ? Colors.red
                              : ColorsManager.labelcolor(context),
                          size: 20,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
