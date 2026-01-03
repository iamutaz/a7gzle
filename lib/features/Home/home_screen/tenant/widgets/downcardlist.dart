import 'package:a7gzle/features/Home/home_screen/tenant/widgets/downCard.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/widgets/downcard-model.dart';

import 'package:flutter/material.dart';

class downcardlist extends StatelessWidget {
  const downcardlist({super.key});
  final List<DowncardModel> downcardd = const [
    DowncardModel(
      downimage: 'assets/images/6e672700ba29c8ccc0e79ba244ea8b1adc655d11.png',
      downprice: "\$12219",
    ),
    DowncardModel(
      downimage: "assets/images/341cb5c55952cdc3db9620c516cd7b1807a0f369.png",
      downprice: "\$1424",
    ),
    DowncardModel(
      downimage: "assets/images/a1268750b4fef56a7b8ced28145c065c2f5bc0de.png",
      downprice: "\$17821",
    ),
    DowncardModel(
      downimage: "assets/images/1ae504e2d55428c2a94076622fe8ddd6d8d8476d.png",
      downprice: "\$21469",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      //  المسافة من أطراف الشاشة
      padding: const EdgeInsets.symmetric(horizontal: 16),

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // كرتين جنب بعض
        //  المسافة بين الكروت يمين/يسار
        crossAxisSpacing: 16,

        //  المسافة بين الكروت فوق/تحت
        mainAxisSpacing: 16,

        //  تحكم بارتفاع الكرت
        childAspectRatio: 0.70,
      ),
      itemBuilder: (context, index) {
        return Downcard(down: downcardd[index]);
      },
    );
  }
}
