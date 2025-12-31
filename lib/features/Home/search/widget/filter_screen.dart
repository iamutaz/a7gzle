import 'package:a7gzle/features/Home/search/widget/price_range_slider.dart';
import 'package:a7gzle/features/Home/search/widget/simple_numirecal_slider.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_application_10/FilterButton.dart';
// import 'package:flutter_application_10/building_slider.dart';
// import 'package:flutter_application_10/price_slider.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues priceRange = const RangeValues(102, 3377);
  RangeValues sizeRange = const RangeValues(1370, 2720);

  int bedrooms = 0;
  int bathrooms = 0;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.79,
      minChildSize: 0.0,
      maxChildSize: 0.85,
      builder: (_, controller) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: SingleChildScrollView(
            controller: controller,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// HEADER
                Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: Color(0xEBECF3FD),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        iconSize: 20,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Center(
                        child: Text(
                          "Filter",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Reset",
                      style: TextStyle(
                        color: Color(0xff0061FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                /// PRICE RANGE
                const Text(
                  "Price Range",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 8),
                PriceRangeSliderWidget(),

                const SizedBox(height: 24),

                /// PROPERTY TYPE
                const Text(
                  "Property Type",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 12),

                // Wrap(
                //   spacing: 10,
                //   runSpacing: 10,
                //   children: [
                //     CustomFilterButton(text: "Apartments", color: Color(0xff0061FF), width: 123, textColor: Colors.white, fontWeight: FontWeight.w600),
                //     CustomFilterButton(text: "Townhomes", color: Color(0xff0061FF), width: 123, textColor: Colors.white, fontWeight: FontWeight.w600),
                //     CustomFilterButton(text: "Homes", color: Color(0xEBECF3FD), width: 86, textColor: Colors.black, fontWeight: FontWeight.w400),
                //     CustomFilterButton(text: "Condos", color: Color(0xEBECF3FD), width: 90, textColor: Colors.black, fontWeight: FontWeight.w400),
                //     CustomFilterButton(text: "Duplexes", color: Color(0xEBECF3FD), width: 100, textColor: Colors.black, fontWeight: FontWeight.w400),
                //     CustomFilterButton(text: "Studios", color: Color(0xEBECF3FD), width: 90, textColor: Colors.black, fontWeight: FontWeight.w400),
                //   ],
                // ),
                const SizedBox(height: 24),

                /// HOME DETAILS
                const Text(
                  "Home Details",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 12),

                _counterRow(
                  title: "Bedrooms",
                  value: bedrooms,
                  onMinus: () {
                    if (bedrooms > 0) setState(() => bedrooms--);
                  },
                  onPlus: () => setState(() => bedrooms++),
                ),

                const SizedBox(height: 8),

                _counterRow(
                  title: "Bathrooms",
                  value: bathrooms,
                  onMinus: () {
                    if (bathrooms > 0) setState(() => bathrooms--);
                  },
                  onPlus: () => setState(() => bathrooms++),
                ),

                const SizedBox(height: 24),

                const Text(
                  "Building Size",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 8),
                SimpleNumericRangeSlider(),
                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0061FF),
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
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }

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
          style: const TextStyle(
            color: Color(0xFF666876),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        Row(
          children: [
            _circleIconButton(icon: Icons.remove, onTap: onMinus),
            const SizedBox(width: 12),
            Text("$value", style: const TextStyle(fontWeight: FontWeight.bold)),
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
        decoration: const BoxDecoration(
          color: Color(0xEBECF3FD),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 18, color: const Color(0xff0061FF)),
      ),
    );
  }
}
