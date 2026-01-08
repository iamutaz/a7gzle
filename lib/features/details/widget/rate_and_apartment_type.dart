import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/details/data/cubit/rate_apartment_cubit.dart';
import 'package:a7gzle/features/details/data/model/rate_request_body.dart';
import 'package:a7gzle/features/details/widget/rate_bloc_listiner.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RateAndApartmentType extends StatefulWidget {
  final String apartmenttype;
  final int apartmentid;
  double? rate;
  RateAndApartmentType({
    super.key,
    this.rate,
    required this.apartmenttype,
    required this.apartmentid,
  });

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
                final rateCubit = context.read<RateApartmentCubit>();

                showDialog(
                  context: context,
                  builder: (dialogcontext) {
                    return BlocProvider.value(
                      value: rateCubit,
                      child: StatefulBuilder(
                        builder: (context, setDialogState) {
                          return AlertDialog(
                            title: Text("Rate this apartment".tr()),
                            backgroundColor: ColorsManager.scaffoldColor(
                              context,
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  _reatevalue.toStringAsFixed(1),
                                  style: TextStyles.font16graymiduem,
                                ),
                                Slider(
                                  min: 0,
                                  divisions: 50,
                                  max: 5,
                                  value: _reatevalue,
                                  onChanged: (value) {
                                    setDialogState(() {
                                      _reatevalue = value;
                                    });
                                  },
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: InkWell(
                                    onTap: () {
                                      context
                                          .read<RateApartmentCubit>()
                                          .emitrateapartment(
                                            RateRequestBody(
                                              apartmentid: widget.apartmentid,
                                              rate: _reatevalue,
                                            ),
                                          );
                                    },
                                    child: Text(
                                      "rate".tr(),
                                      style: TextStyles.font18mainbluesemibold,
                                    ),
                                  ),
                                ),
                                RateBlocListiner(),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              },
              child: SvgPicture.asset("assets/svgs/star.svg"),
            ),
            SizedBox(width: 8),
            Text(
              widget.rate == null ? "not rated yet".tr() : "${widget.rate}",
              style: TextStyles.font14neartograymiduem,
            ),
          ],
        ),
      ],
    );
  }
}
