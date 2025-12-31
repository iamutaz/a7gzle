import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RateAndApartmentType extends StatefulWidget {
  final String apartmenttype;
  const RateAndApartmentType({super.key, required this.apartmenttype});

  @override
  State<RateAndApartmentType> createState() => _RateAndApartmentTypeState();
}

class _RateAndApartmentTypeState extends State<RateAndApartmentType> {
  double _reatevalue = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: ColorsManager.sui,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            widget.apartmenttype,
            style: TextStyles.font13mainbluesemibold,
          ),
        ),
        SizedBox(width: 15.w),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Rate this apartment"),
                      backgroundColor: Colors.white,
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("$_reatevalue"),
                          Slider(
                            min: 0,
                            max: 5,
                            value: _reatevalue,
                            onChanged: (value) {
                              setState(() {
                                _reatevalue = value;
                              });
                              ;
                            },
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "rate",
                              style: TextStyles.font18mainbluesemibold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: SvgPicture.asset("assets/svgs/star.svg"),
            ),
            SizedBox(width: 8),
            Text("4950", style: TextStyles.font14neartograymiduem),
          ],
        ),
      ],
    );
  }
}
