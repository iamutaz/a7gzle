import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/features/Home/search/widget/FilterButton.dart';
import 'package:a7gzle/features/Home/search/widget/price_range_slider.dart';
import 'package:a7gzle/features/Home/search/widget/simple_numirecal_slider.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  // الحالات (States) الخاصة بالمدخلات
  RangeValues priceRange = const RangeValues(0, 450);
  RangeValues sizeRange = const RangeValues(500, 4000);
  int bedrooms = 0;
  int bathrooms = 0;

  // حالات اختيار أنواع العقارات
  bool apartmentsSelected = false;
  bool townhomesSelected = false;
  bool homesSelected = false;
  bool condosSelected = false;
  bool duplexesSelected = false;
  bool studiosSelected = false;

  /// دالة تحويل موضع السلايدر لسعر حقيقي (الحساب الهرمي)
  double _getActualPrice(double position) {
    const double maxPos = 450;
    const double mid = maxPos / 2;
    if (position <= mid) return position * 2;
    else return (maxPos - position) * 2;
  }

  /// إعادة تعيين كافة الفلاتر للقيم الافتراضية
  void _resetFilters() {
    setState(() {
      priceRange = const RangeValues(0, 450);
      sizeRange = const RangeValues(500, 4000);
      bedrooms = 0;
      bathrooms = 0;
      apartmentsSelected = townhomesSelected = homesSelected = false;
      condosSelected = duplexesSelected = studiosSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // استخدام ورقة قابلة للسحب تظهر فوق الشاشة الحالية
    return DraggableScrollableSheet(
      initialChildSize: 0.79, // الحجم المبدئي (79% من الشاشة)
      minChildSize: 0.0,
      maxChildSize: 0.85,
      builder: (_, controller) {
        return Container(
          decoration: BoxDecoration(
            // --- لون خلفية الفلتر ---

            color: ColorsManager.offwhite(context),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: SingleChildScrollView(
            controller: controller,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// 1. شريط العنوان (Header): الرجوع، العنوان، وإعادة التعيين
                Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        // خلفية زر الرجوع شفافة قليلاً
                        color: ColorsManager.offwhite(context).withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        color: ColorsManager.lightblack(context), // يتغير لون السهم حسب الثيم
                        onPressed: () => Navigator.of(context).pop(),
                        iconSize: 20,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Filter",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: ColorsManager.lightblack(context), // لون النص الأساسي
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: _resetFilters,
                      child: Text(
                        "Reset",
                        style: TextStyle(
                          color: ColorsManager.mainBlue, // لون أزرق ثابت
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                /// (Price Range)
                Text(
                  "Price Range",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 16,
                    color: ColorsManager.lightblack(context), 
                  ),
                ),
                const SizedBox(height: 8),
                PriceRangeSliderWidget(
                  values: priceRange,
                  onChanged: (val) => setState(() => priceRange = val),
                ),
                const SizedBox(height: 24),

                ///(Property Type)
                Text(
                  "Property Type",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 16,
                    color: ColorsManager.lightblack(context),
                  ),
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    _buildFilterBtn("Apartments", apartmentsSelected, (v) => apartmentsSelected = v, 123),
                    _buildFilterBtn("Townhomes", townhomesSelected, (v) => townhomesSelected = v, 123),
                    _buildFilterBtn("Homes", homesSelected, (v) => homesSelected = v, 86),
                    _buildFilterBtn("Condos", condosSelected, (v) => condosSelected = v, 90),
                    _buildFilterBtn("Duplexes", duplexesSelected, (v) => duplexesSelected = v, 100),
                    _buildFilterBtn("Studios", studiosSelected, (v) => studiosSelected = v, 90),
                  ],
                ),
                const SizedBox(height: 24),

                /// (Bedrooms & Bathrooms)
                Text(
                  "Home Details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 16,
                    color: ColorsManager.lightblack(context),
                  ),
                ),
                const SizedBox(height: 12),
                _counterRow(
                  title: "Bedrooms",
                  value: bedrooms,
                  onMinus: () => setState(() { if (bedrooms > 0) bedrooms--; }),
                  onPlus: () => setState(() => bedrooms++),
                ),
                const SizedBox(height: 8),
                _counterRow(
                  title: "Bathrooms",
                  value: bathrooms,
                  onMinus: () => setState(() { if (bathrooms > 0) bathrooms--; }),
                  onPlus: () => setState(() => bathrooms++),
                ),
                const SizedBox(height: 24),

                /// (Building Size)
                Text(
                  "Building Size",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 16,
                    color: ColorsManager.lightblack(context),
                  ),
                ),
                const SizedBox(height: 8),
                SimpleNumericRangeSlider(
                  values: sizeRange,
                  onChanged: (val) => setState(() => sizeRange = val),
                ),
                const SizedBox(height: 30),

                /// (Set Filter)
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                 
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsManager.mainBlue, // لون أزرق ثابت
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: const Text(
                      "Set Filter",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // ويدجت مساعدة لبناء أزرار الفلترة العلوية
  Widget _buildFilterBtn(String title, bool isSelected, Function(bool) onUpdate, double width) {
    return CustomFilterButton(
      text: title,
      width: width,
      isSelected: isSelected,
      onTap: () => setState(() => onUpdate(!isSelected)),
    );
  }

  // ويدجت مساعدة لبناء صفوف العدادات (Bedrooms / Bathrooms)
  Widget _counterRow({required String title, required int value, required VoidCallback onMinus, required VoidCallback onPlus}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: ColorsManager.lightblack(context).withOpacity(0.6), 
            fontSize: 14,
          ),
        ),
        Row(
          children: [
            _circleIconButton(icon: Icons.remove, onTap: onMinus),
            const SizedBox(width: 12),
            Text(
              value.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: ColorsManager.lightblack(context),
              ),
            ),
            const SizedBox(width: 12),
            _circleIconButton(icon: Icons.add, onTap: onPlus),
          ],
        ),
      ],
    );
  }

  // رسم أزرار الزائد والناقص الدائرية المخصصة
  Widget _circleIconButton({required IconData icon, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          // نستخدم لون الحدود (BorderColor) لخلفية الدائرة الصغيرة
          color: ColorsManager.enabledBorderbordercolor(context),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 18, color: ColorsManager.mainBlue), // أيقونة زرقاء
      ),
    );
  }
}