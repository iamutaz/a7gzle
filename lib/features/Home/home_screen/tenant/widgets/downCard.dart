import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/colors_manager.dart'; // استيراد ملف الألوان
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/downcard-model.dart';
import 'package:flutter/material.dart';

class Downcard extends StatelessWidget {
  const Downcard({super.key, required this.down});
  final DowncardModel down;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 187,
      height: 275,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        // التعديل: استبدال Colors.white بلون الـ offwhite الذكي
        color: ColorsManager.offwhite(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image + Rating
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  context.pushNamed(RoutesConstant.details);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    down.downimage,
                    height: 154,
                    width: 187,
                    fit: BoxFit.cover,
                  ),
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
                    // التعديل: خلفية التقييم تتبع الـ offwhite عشان تكون واضحة
                    color: ColorsManager.offwhite(context),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        '4.8',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          // التعديل: اللون الأزرق الثابت يبقى كما هو أو يستخدم mainBlue
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

          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'La Grand Maison',
              style: TextStyle(
                fontSize: 14, 
                fontWeight: FontWeight.bold,
                // التعديل: نص العنوان يقلب أبيض بالدارك
                color: ColorsManager.lightblack(context),
              ),
            ),
          ),

          const SizedBox(height: 4),

          // Location
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'Tokyo, Japan',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),

          const SizedBox(height: 8),

          // Price + Favorite
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  down.downprice,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ColorsManager.mainBlue,
                  ),
                ),
                // الأيقونة بالثيم الغامق بفضل AppThemes رح تطلع واضحة
                const Icon(Icons.favorite_border, color: Colors.grey),
              ],
            ),
          ),

          const SizedBox(height: 8),
        ],
      ),
    );
  }
}