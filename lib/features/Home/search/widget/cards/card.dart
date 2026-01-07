import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/search/widget/cards/cards_models.dart';
import 'package:flutter/material.dart';

class FilterCard extends StatelessWidget {
  const FilterCard({super.key, required this.cardData});
  final FilterCardModel cardData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(RoutesConstant.details);
      },
      child: Container(
        width: 187,
        height: 275,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorsManager.offwhite(context),
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // أي نص جوا الكرت بيبدأ من اليسار
          children: [
            //الستاك مشان حط التقييم فوق الصورة
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.network(
                    cardData.image,
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
                          cardData.rate,
                          style: TextStyles.font14blackmideum.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF0061FF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),
            // عرض عنوان الشقة
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                cardData.title,
                style: TextStyles.font14blackmideum.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // عرض الموقع
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                cardData.location,
                style: TextStyles.font14neartograymiduem.copyWith(fontSize: 12),
              ),
            ),

            const SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // بيدفع السعر لليسار والقلب لليمين
                children: [
                  Text(
                    cardData.price,
                    style: TextStyles.font18blackbold.copyWith(
                      fontSize: 16,
                      color: const Color(0xFF0061FF),
                    ),
                  ),
                  const Icon(Icons.favorite_border, color: Colors.grey),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
