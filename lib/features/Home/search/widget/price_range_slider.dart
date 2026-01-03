import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';

class PriceRangeSliderWidget extends StatelessWidget {
  final RangeValues values; // القيم الحالية للسلايدر (البداية والنهاية)
  final ValueChanged<RangeValues> onChanged; // الدالة اللي بتشتغل لما نحرك المقابض

  const PriceRangeSliderWidget({
    super.key,
    required this.values,
    required this.onChanged,
  });

  // تحديد المدى  للسلايدر على الشاشة (من 0 لـ 450 بكسل تقريباً)
  final double minPos = 0;
  final double maxPos = 450;

  /// دالة الحساب الهرمي:
  /// وظيفتها تخلي السعر يزيد كل ما قربنا من نص السلايدر، وينقص كل ما بعدنا

  double getPyramidPrice(double position) {
    double mid = (maxPos + minPos) / 2; // نقطة المنتصف
    if (position <= mid) {
      // إذا كنا بالنصف الأول: السعر بيزيد مع الحركة لليمين
      return (position - minPos) * 2;
    } else {
      // إذا كنا بالنصف الثاني: السعر بينقص مع الحركة لليمين
      return (maxPos - position) * 2;
    }
  }

  @override
  Widget build(BuildContext context) {

    final Color primaryColor = ColorsManager.mainBlue;

    return SizedBox(
      height: 135,
      child: Stack(
        children: [

          Container(
            width: double.infinity,
            height: 90,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/price_range.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// 2. السلايدر (RangeSlider): الجزء التفاعلي اللي بيتحرك
          Positioned(
            bottom: 20, // موقعه فوق النصوص بشوية
            left: 0,
            right: 0,
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 2, // سماكة الخط الواصل بين المقابض
                activeTrackColor: primaryColor, // لون الخط المحصور بين المقبضين
                inactiveTrackColor: primaryColor.withOpacity(0.2), // لون الخط الخارجي
                rangeThumbShape: _PriceThumbShape(context), // شكل المقبض الدائري المخصص تحت
              ),
              child: RangeSlider(
                values: values,
                min: minPos,
                max: maxPos,
                onChanged: onChanged,
              ),
            ),
          ),

          /// 3. عرض الأرقام (الأسعار): النصوص اللي بتتحرك تحت كل مقبض
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: LayoutBuilder(
              builder: (context, constraints) {
                double width = constraints.maxWidth; // عرض الشاشة المتاح
                return SizedBox(
                  height: 20,
                  child: Stack(
                    children: [
                      // نص السعر للمقبض الأول (البداية)
                      Positioned(
                        // معادلة حساب موقع النص ليكون تحت المقبض بالظبط
                        left: (values.start / maxPos) * (width - 24),
                        child: Text(
                          '\$${getPyramidPrice(values.start).round()}', // عرض السعر مقرباً
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // نص السعر للمقبض الثاني (النهاية)
                      Positioned(
                        left: (values.end / maxPos) * (width - 24),
                        child: Text(
                          '\$${getPyramidPrice(values.end).round()}',
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/// كلاس مخصص لرسم شكل "المقبض" (الدوائر اللي بنمسكها)
class _PriceThumbShape extends RangeSliderThumbShape {
  final BuildContext context;

  _PriceThumbShape(this.context);

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

    //  رسم خلفية الدائرة حسب المود دارك اولايت
    final fillPaint = Paint()
      ..color = ColorsManager.offwhite(this.context);

    // رسم إطار الدائرة (اللون الأزرق)
    final strokePaint = Paint()
      ..color = ColorsManager.mainBlue
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, 9, fillPaint); // رسم الدائرة الممتلئة
    canvas.drawCircle(center, 9, strokePaint); // رسم الإطار
  }
}