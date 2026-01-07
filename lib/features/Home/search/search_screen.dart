import 'package:a7gzle/core/theming/dark_mode/app_icon.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_form_feild.dart';
import 'package:a7gzle/features/Home/search/widget/cards/cards-list.dart'; 
import 'package:a7gzle/features/Home/search/widget/filter_screen.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// هاد عرفتو برا الكلاس لانو بدو يحفظ البيانات 
//يعني اذا رحت من صفحة لصفحة مايرجع شاشة البحث للحالة الافتراضية وكانو مابحثت عشي قبل
List<Apartment>? persistedFilteredResults;

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  
  // دالة فتح الفلترة واستقبال البيانات منها
  void _openFilter(BuildContext context) async {
    final results = await showModalBottomSheet<List<Apartment>>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const FilterScreen(),
    );

    // إذا رجعت نتائج من شاشة الفلترة
    if (results != null) {
      setState(() {
        persistedFilteredResults = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Search for Your Ideal Home",
          style: TextStyles.font18blackbold,
        ),
        leading: const SizedBox.shrink(),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: AppIcon(path: "assets/svgs/settings/notifaication.svg"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30),
          child: Column(
            children: [
              AppTextFormFeild(
                suffixIcon: InkWell(
                  onTap: () {
                    _openFilter(context);
                  },
                  child: AppIcon(path: "assets/svgs/filter.svg"),
                ),
                borderRadius: BorderRadius.circular(20),
                feildname: "search for location",
                validator: (value) {},
                onTap: () {
                  _openFilter(context);
                },
              ),
              const SizedBox(height: 25),
              
              // نمرر المتغير لليست المسؤولة عن العرض
              FilterListCard(list: persistedFilteredResults),
            ],
          ),
        ),
      ),
    );
  }
}