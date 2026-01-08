import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart'; // الموديل الجديد
import 'package:flutter/material.dart';

class Downcard extends StatelessWidget {
  const Downcard({super.key, required this.apartment});
  final Apartment apartment;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16), 
      onTap: () {
        // TODO: Navigation 
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
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
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
                  const Icon(Icons.favorite_border, color: Colors.grey),
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