import 'package:a7gzle/features/Home/home_screen/tenant/widgets/downCard.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart'; 
import 'package:flutter/material.dart';

class downcardlist extends StatelessWidget {
  final List<Apartment> apartments;
  const downcardlist({super.key, required this.apartments});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: apartments.length, 
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,      // كرتين في كل صف
        crossAxisSpacing: 16,   // مسافة جانبية بين الكروت
        mainAxisSpacing: 16,    // مسافة عمودية بين الكروت
        childAspectRatio: 0.65, // تناسق أبعاد الكرت
      ),
      itemBuilder: (context, index) {
       
        return Downcard(apartment: apartments[index]);
      },
    );
  }
}