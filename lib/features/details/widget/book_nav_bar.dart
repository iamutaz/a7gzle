import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_button.dart';
import 'package:a7gzle/features/details/data/cubit/booking_cubit.dart';
import 'package:a7gzle/features/details/widget/booking_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookNavBar extends StatelessWidget {
  final String price;
  final int apartmentid;
  const BookNavBar({super.key, required this.apartmentid, required this.price});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Container(
        height: 110.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          border: Border(
            top: BorderSide(color: Colors.grey.shade300, width: 1),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("price", style: TextStyles.font14neartograymiduem),
                Text(price, style: TextStyles.font24mainbluebold),
              ],
            ),
            SizedBox(width: 29.w),
            Expanded(
              child: AppTextButton(
                raduisbutton: 30,
                onpressed: () {
                  _openbooking(context, apartmentid);
                },
                textButton: "Booking now",
                textStyle: TextStyles.font16whitesemibold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _openbooking(BuildContext context, int apartmentid) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => BlocProvider(
      create: (context) => getIt<BookingCubit>(),
      child: BookingWidget(apartmentid: apartmentid),
    ),
  );
}
