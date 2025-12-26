import 'package:flutter/material.dart';

class SimpleNumericRangeSlider extends StatefulWidget {
  const SimpleNumericRangeSlider({super.key});

  @override
  State<SimpleNumericRangeSlider> createState() =>
      _SimpleNumericRangeSliderState();
}

class _SimpleNumericRangeSliderState extends State<SimpleNumericRangeSlider> {
  RangeValues _currentValues = const RangeValues(1370, 2720);
  final double minVal = 500;
  final double maxVal = 4000;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
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
                values: _currentValues,
                min: minVal,
                max: maxVal,
                onChanged: (values) {
                  setState(() {
                    _currentValues = values;
                  });
                },
              ),
            ),

            SizedBox(
              height: 25,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    left: _calculatePosition(_currentValues.start, width),
                    child: Text(
                      '${_currentValues.start.round()}',
                      style: const TextStyle(
                        color: Color(0xff0061FF),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),

                  Positioned(
                    left: _calculatePosition(_currentValues.end, width),
                    child: Text(
                      '${_currentValues.end.round()}',
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
    double ratio = (value - minVal) / (maxVal - minVal);

    return (ratio * (width - 24)) + 2;
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
