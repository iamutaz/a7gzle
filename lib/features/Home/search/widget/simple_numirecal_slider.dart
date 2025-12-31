import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';

class SimpleNumericRangeSlider extends StatelessWidget {
  final RangeValues values; // القيم المختارة (بداية ونهاية المدى)
  final ValueChanged<RangeValues> onChanged; // ماذا يحدث عند سحب السلايدر

  SimpleNumericRangeSlider({
    super.key,
    required this.values,
    required this.onChanged,
  });

  // تحديد أدنى وأعلى قيمة رقمية للسلايدر (مثلاً المساحة من 500 لـ 4000)
  final double minVal = 500;
  final double maxVal = 4000;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // نحسب عرض الويدجت المتاح عشان نحرك نصوص الأرقام بدقة
        double width = constraints.maxWidth;

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// 1. تخصيص شكل وثيم السلايدر
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 2, // نحافة الخط
                activeTrackColor: ColorsManager.mainBlue, // لون الجزء المختار (أزرق)
                inactiveTrackColor: Colors.grey.withOpacity(0.3), // لون الجزء غير المختار
                overlayColor: Colors.transparent, // إلغاء الهالة اللي بتظهر عند اللمس
                
                // نستخدم الشكل الدائري المخصص اللي رسمناه تحت (مررنا الـ context للثيم)
                rangeThumbShape: _SizeThumbShape(context), 
                rangeTrackShape: const RoundedRectRangeSliderTrackShape(),
              ),
              child: RangeSlider(
                values: values,
                min: minVal,
                max: maxVal,
                onChanged: onChanged,
              ),
            ),

            /// 2. عرض القيم الرقمية (الأسعار أو المساحات) تحت المقابض مباشرة
            SizedBox(
              height: 25,
              child: Stack(
                children: [
                  // القيمة الأولى (البداية)
                  Positioned(
                    left: _calculatePosition(values.start, width),
                    child: Text(
                      values.start.round().toString(), // تحويل الرقم لعدد صحيح
                      style: TextStyle(
                        color: ColorsManager.mainBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // القيمة الثانية (النهاية)
                  Positioned(
                    left: _calculatePosition(values.end, width),
                    child: Text(
                      values.end.round().toString(),
                      style: TextStyle(
                        color: ColorsManager.mainBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  /// دالة حسابية لتحويل القيمة الرقمية إلى "مكان" (بكسل) على الشاشة
  /// عشان النص يلحق المقبض وين ما راح
  double _calculatePosition(double value, double width) {
    // نسبة القيمة بالنسبة للمدى الكلي
    double ratio = (value - minVal) / (maxVal - minVal);
    // تحويل النسبة لبكسلات مع مراعاة حجم المقبض (24)
    return (ratio * (width - 24)) + 2;
  }
}

/// كلاس مخصص لرسم المقابض الدائرية (Thumbs)
class _SizeThumbShape extends RangeSliderThumbShape {
  final BuildContext context;
  _SizeThumbShape(this.context);

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) => const Size(20, 20);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    bool isDiscrete = false,
    bool isEnabled = false,
    bool? isOnTop,
    required SliderThemeData sliderTheme,
    TextDirection? textDirection,
    Thumb? thumb,
    bool? isPressed,
  }) {
    final canvas = context.canvas;


    final fillPaint = Paint()..color = ColorsManager.offwhite(this.context);

    // لون الإطار الخارجي 
    final strokePaint = Paint()
      ..color = ColorsManager.mainBlue
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke;

    // رسم الدائرة الأساسية
    canvas.drawCircle(center, 9, fillPaint);
    // رسم حدود الدائرة
    canvas.drawCircle(center, 9, strokePaint);
  }
}