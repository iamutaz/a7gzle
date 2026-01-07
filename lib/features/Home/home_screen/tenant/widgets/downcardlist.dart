import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/favorite_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/downCard.dart';
<<<<<<< HEAD
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/downcard-model.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
=======
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart'; 
>>>>>>> 98e9685c3a5cc42561ccf2e36860b9becd9bea90
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        crossAxisCount: 2, // كرتين في كل صف
        crossAxisSpacing: 16, // مسافة جانبية بين الكروت
        mainAxisSpacing: 16, // مسافة عمودية بين الكروت
        childAspectRatio: 0.65, // تناسق أبعاد الكرت
      ),
      itemBuilder: (context, index) {
<<<<<<< HEAD
        final item = apartments[index];
        final model = DowncardModel(
          downimage: item.images[0].path,
          downprice: "\$${item.price}",
          downtitle: item.title,
          downlocation: item.city,
          downrate: item.rate?.toString() ?? "--",
        );
        return Downcard(down: model, apartment: apartments[index]);
=======
       
        return Downcard(apartment: apartments[index]);
>>>>>>> 98e9685c3a5cc42561ccf2e36860b9becd9bea90
      },
    );
  }
}
