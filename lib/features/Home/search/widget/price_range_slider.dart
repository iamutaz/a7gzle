import 'package:flutter/material.dart';

class PriceRangeSliderWidget extends StatefulWidget {
  const PriceRangeSliderWidget({super.key});

  @override
  State<PriceRangeSliderWidget> createState() => _PriceRangeSliderWidgetState();
}

class _PriceRangeSliderWidgetState extends State<PriceRangeSliderWidget> {
  RangeValues _currentRangeValues = const RangeValues(50, 450);
  final double minPrice = 50;
  final double maxPrice = 450;

  final List<double> histogramData = [
    0.0,
    0.05,
    0.1,
    0.25,
    0.5,
    0.8,
    1.0,
    0.8,
    0.5,
    0.25,
    0.1,
    0.05,
    0.0,
  ];

  int _calculateHramidValue(double position) {
    if (position <= minPrice + 2) return 0;
    if (position >= maxPrice - 2) return 0;

    double midPoint = (maxPrice + minPrice) / 2;
    double maxDisplayValue = 500;

    if (position <= midPoint) {
      return (((position - minPrice) / (midPoint - minPrice)) * maxDisplayValue)
          .round();
    } else {
      return (((maxPrice - position) / (maxPrice - midPoint)) * maxDisplayValue)
          .round();
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double availableWidth = constraints.maxWidth;

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: CustomPaint(
                      painter: HistogramPainter(histogramData),
                    ),
                  ),
                ),

                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 2,
                    activeTrackColor: const Color(0xff0061FF),
                    inactiveTrackColor: Colors.grey[200],
                    overlayColor: Colors.transparent,
                    rangeThumbShape: _CustomThumbShape(),
                    rangeTrackShape: const RoundedRectRangeSliderTrackShape(),
                  ),
                  child: RangeSlider(
                    values: _currentRangeValues,
                    min: minPrice,
                    max: maxPrice,
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    left: _calculatePosition(
                      _currentRangeValues.start,
                      availableWidth,
                    ),
                    child: Text(
                      '\$${_calculateHramidValue(_currentRangeValues.start)}',
                      style: const TextStyle(
                        color: Color(0xff0061FF),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Positioned(
                    left: _calculatePosition(
                      _currentRangeValues.end,
                      availableWidth,
                    ),
                    child: Text(
                      '\$${_calculateHramidValue(_currentRangeValues.end)}',
                      style: const TextStyle(
                        color: Color(0xff0061FF),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
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

  double _calculatePosition(double value, double width) {
    double ratio = (value - minPrice) / (maxPrice - minPrice);

    return (ratio * (width - 24));
  }
}

class _CustomThumbShape extends RangeSliderThumbShape {
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
    final Canvas canvas = context.canvas;
    final fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    final strokePaint = Paint()
      ..color = const Color(0xff0061FF)
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, 9, fillPaint);
    canvas.drawCircle(center, 9, strokePaint);
  }
}

class HistogramPainter extends CustomPainter {
  final List<double> data;
  HistogramPainter(this.data);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff0061FF).withOpacity(0.12)
      ..style = PaintingStyle.fill;
    final double barWidth = size.width / data.length;
    for (int i = 0; i < data.length; i++) {
      final double barHeight = data[i] * size.height;
      final double x = i * barWidth;
      canvas.drawRRect(
        RRect.fromLTRBR(
          x + 3,
          size.height - barHeight,
          x + barWidth - 3,
          size.height,
          const Radius.circular(2),
        ),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
