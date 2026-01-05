import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart'; 
import 'package:a7gzle/core/widgets/app_drop_down_button.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/model/drop_down_button_value_model.dart';
import 'package:a7gzle/features/Home/search/widget/cards/cards_models.dart';
import 'package:a7gzle/features/Home/search/widget/filter-api.dart';
import 'package:a7gzle/features/Home/search/widget/price_range_slider.dart';
import 'package:a7gzle/features/Home/search/widget/simple_numirecal_slider.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final TextEditingController cityController = TextEditingController();

  final List<SelectedListItem<DropDownbuttonvalueModel>> cities = [
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Damascus', value: 'damascus'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Aleppo', value: 'aleppo'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Homs', value: 'homs'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Hama', value: 'hama'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Latakia', value: 'latakia'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Tartus', value: 'tartus'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Idlib', value: 'idlib'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(
        label: 'Rif Dimashq',
        value: 'rif_dimashq',
      ),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(
        label: 'Deir Ez Zor',
        value: 'deir_ez_zor',
      ),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Daraa', value: 'daraa'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'As Suwayda', value: 'as_suwayda'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Quneitra', value: 'quneitra'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Raqqa', value: 'raqqa'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Al Hasakah', value: 'al_hasakah'),
    ),
  ];

  RangeValues priceRange = const RangeValues(0, 450);
  RangeValues sizeRange = const RangeValues(500, 4000);
  int bedrooms = 0;
  int bathrooms = 0;

  double _getActualPrice(double position) {
    const double maxPos = 450;
    const double mid = maxPos / 2;
    if (position <= mid) return position * 2;
    return (maxPos - position) * 2;
  }

  void _resetFilters() {
    setState(() {
      cityController.clear();
      priceRange = const RangeValues(0, 450);
      sizeRange = const RangeValues(500, 4000);
      bedrooms = 0;
      bathrooms = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.79,
      minChildSize: 0.0,
      maxChildSize: 0.85,
      builder: (_, controller) {
        return Container(
          decoration: BoxDecoration(
            color: ColorsManager.offwhite(context),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: SingleChildScrollView(
            controller: controller,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Header
                Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: ColorsManager.offwhite(context).withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        color: ColorsManager.lightblack(context),
                        onPressed: () => Navigator.of(context).pop(),
                        iconSize: 20,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Filter",
                          style: TextStyles.font16labelblackmideum, 
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: _resetFilters,
                      child: Text(
                        "Reset",
                        style: TextStyles.font14blackmideum.copyWith(
                          color: ColorsManager.mainBlue,
                        ), 
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // 2. Price Range
                Text(
                  "Price Range",
                  style: TextStyles.font16labelblackmideum.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                PriceRangeSliderWidget(
                  values: priceRange,
                  onChanged: (val) => setState(() => priceRange = val),
                ),
                const SizedBox(height: 24),

                // 3. City Selection
                Text(
                  "City",
                  style: TextStyles.font16labelblackmideum.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                AppCityDropDownFormField(
                  label: 'Select City',
                  controller: cityController,
                  datalist: cities,
                  onSelected: (city) {
                    debugPrint('Selected city: $city');
                  },
                ),
                const SizedBox(height: 24),

                // 4. Home Details
                Text(
                  "Home Details",
                  style: TextStyles.font16labelblackmideum.copyWith(
                    fontWeight: FontWeight.bold,
                  ), 
                ),
                const SizedBox(height: 12),
                _counterRow(
                  title: "Bedrooms",
                  value: bedrooms,
                  onMinus: () => setState(() {
                    if (bedrooms > 0) bedrooms--;
                  }),
                  onPlus: () => setState(() => bedrooms++),
                ),
                const SizedBox(height: 8),
                _counterRow(
                  title: "Bathrooms",
                  value: bathrooms,
                  onMinus: () => setState(() {
                    if (bathrooms > 0) bathrooms--;
                  }),
                  onPlus: () => setState(() => bathrooms++),
                ),
                const SizedBox(height: 24),

                // 5. Building Size
                Text(
                  "Building Size",
                  style: TextStyles.font16labelblackmideum.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                SimpleNumericRangeSlider(
                  values: sizeRange,
                  onChanged: (val) => setState(() => sizeRange = val),
                ),
                const SizedBox(height: 20),

                // 6. Set Filter Button
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () async {
                      double actualStart = _getActualPrice(priceRange.start);
                      double actualEnd = _getActualPrice(priceRange.end);
                      // قائمة الشروط للسيرفر
                      Map<String, dynamic> filterParams = {
                        'min_bathrooms': 0,
                        'max_bathrooms': bathrooms,
                        'min_bedrooms': 0,
                        'max_bedrooms': bedrooms,
                        'min_area': sizeRange.start.round(),
                        'max_area': sizeRange.end.round(),
                        'min_price': actualStart.round(),
                        'max_price': actualEnd.round(),
                        'city': cityController.text.isEmpty
                            ? 'damascus'//قررت اعرض شقق دمشق اذا حدد سيتي
                            : cityController.text,
                      };

                      try {
                        // 1.  صار عندي قائمة جاهزة من الشقق
                        List<FilterCardModel> results = await sendFilterRequest(
                          filterParams,
                        );

                        // طبااعة
                        debugPrint(
                          "=============== FILTER RESULTS ============",
                        );
                        debugPrint("Total Apartments Found: ${results.length}");

                        for (var i = 0; i < results.length; i++) {
                          debugPrint("------- Apartment #${i + 1} -------");
                          debugPrint("Title: ${results[i].title}");
                          debugPrint("Price: ${results[i].price}");
                          debugPrint("Location: ${results[i].location}");
                          debugPrint("rate: ${results[i].rate}");
                          debugPrint(
                            "Image URL: ${results[i].image}",
                          );
                        }
                        debugPrint(
                          "==========================================",
                        );
                  
                      //  إذا الشاشة لساها مفتوحة وما سكرها المستخدم، سكرها هلق وبعت "نتائج البحث" للشاشة اللي قبلها
                     if (mounted) Navigator.of(context).pop(results);

                      } catch (e) {
                        debugPrint(" Filter Error: $e");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0061FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      "Set Filter",
                      style: TextStyles.font16whitesemibold,
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

  // circleIconButton
  Widget _counterRow({
    required String title,
    required int value,
    required VoidCallback onMinus,
    required VoidCallback onPlus,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.font14neartograymiduem, 
        ),
        Row(
          children: [
            _circleIconButton(icon: Icons.remove, onTap: onMinus),
            const SizedBox(width: 12),
            Text(
              value.toString(),
              style: TextStyles.font14blackmideum.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 12),
            _circleIconButton(icon: Icons.add, onTap: onPlus),
          ],
        ),
      ],
    );
  }

  Widget _circleIconButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: ColorsManager.enabledBorderbordercolor(context),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 18, color: ColorsManager.mainBlue),
      ),
    );
  }
}