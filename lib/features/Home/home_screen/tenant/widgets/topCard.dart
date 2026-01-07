import 'dart:ui';
import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/favorite_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/favorite_state.dart';

import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/favorite_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class topCard extends StatefulWidget {
  topCard({super.key, required this.apartment});
  final Apartment apartment;

  @override
  State<topCard> createState() => _topCardState();
}

class _topCardState extends State<topCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 340,
      margin: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {
          context.pushNamed(RoutesConstant.details, aurgment: widget.apartment);
        },
        child: Stack(
          children: [
            // صورة الشقة
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child:
                  widget.apartment.images.isNotEmpty &&
                      widget.apartment.images.first.path.isNotEmpty
                  ? FadeInImage.assetNetwork(
                      width: double.infinity,
                      height: double.infinity,
                      placeholder: 'assets/loading.gif',
                      image: widget.apartment.images.first.path,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      'assets/notload.jpeg',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                ),
              ),
            ),

            Positioned(
              left: 16,
              right: 16,
              bottom: 16, // أضفت الـ bottom هنا ليظهر النص أسفل الكرت بشكل صحيح
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.apartment.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font18blackbold.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    widget.apartment.city,
                    style: TextStyles.font14neartograymiduem.copyWith(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    widget.apartment.price,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            // مربع التقييم
            Positioned(
              top: 12,
              right: 12,
              child: Container(
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
                      widget.apartment.rate == null
                          ? "not rated yet"
                          : "${widget.apartment.rate}",
                      style: const TextStyle(
                        color: Color(0xff246BFD),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // زر المفضلة
            Positioned(
              bottom: 16,
              right: 16,
              child: BlocBuilder<FavoriteCubit, FavoriteState>(
                builder: (context, state) {
                  final cubit = context.read<FavoriteCubit>();

                  return GestureDetector(
                    onTap: () {
                      cubit.emittogglefavorite(
                        FavoriteRequest(apartmentid: widget.apartment.id),
                      );
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
                            cubit.isFavorite(widget.apartment.id)
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: cubit.isFavorite(widget.apartment.id)
                                ? Colors.red
                                : Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
