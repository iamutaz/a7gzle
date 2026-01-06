import 'package:a7gzle/core/theming/text_styles.dart'; 
import 'package:a7gzle/features/Home/search/widget/cards/card.dart';
import 'package:a7gzle/features/Home/search/widget/cards/cards_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterListCard extends StatefulWidget {
 // القائمة التي تحتوي على الشقق الي زبطت مع الشروط تبع الفلترة
  final List<FilterCardModel>? list;

  const FilterListCard({super.key, this.list});

  @override
  State<FilterListCard> createState() => _FilterListCardState();
}

class _FilterListCardState extends State<FilterListCard> {
  @override
  Widget build(BuildContext context) {
    //  الحالة الافتراضية: المستخدم لسا ما بحث عن شي
    if (widget.list == null) {
      return const SizedBox.shrink(); // بنرجع صندوق طوله وعرضه صفر
    }

    // حالة الفشل: بحثنا بس السيرفر رجع قائمة فاضية
    if (widget.list!.isEmpty) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 80.h),
        child: Center(
          child: Text(
            "We couldn't find the type of apartments you're looking for.",
            textAlign: TextAlign.center,
            style: TextStyles.font16labelblackmideum,
          ),
        ),
      );
    }

    // 3. حالة النجاح: عرض النتائج في شبكة (Grid)
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // عرض عدد الشقق الموجودة
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            "Found ${widget.list!.length} Apartments",
            style: TextStyles.font18blackbold,
          ),
        ),
        SizedBox(height: 20.h),
        // بناء الشبكة التي تحتوي على الكروت
        GridView.builder(
          itemCount: widget.list!.length,
          shrinkWrap: true, // بتاخد مساحة عقد الكروت الي جواتا
          physics: const NeverScrollableScrollPhysics(), // لتعطيل السكرول الداخلي
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عمودين
            crossAxisSpacing: 16, // مسافة أفقية
            mainAxisSpacing: 16, // مسافة رأسية
            childAspectRatio: 0.65, // توازن الطول والعرض للكرت
          ),
          // استدعاء الكرت وتمرير بيانات الشقة له
          itemBuilder: (context, index) =>
              FilterCard(cardData: widget.list![index]),
        ),
      ],
    );
  }
}