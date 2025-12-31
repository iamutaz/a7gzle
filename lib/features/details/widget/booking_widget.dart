import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_button.dart';
import 'package:a7gzle/core/widgets/app_text_form_feild.dart';
import 'package:a7gzle/features/auth/signup/data/cubit/sign_up_cubit.dart';
import 'package:a7gzle/features/details/data/cubit/booking_cubit.dart';
import 'package:a7gzle/features/details/data/model/booking_request_body.dart';
import 'package:a7gzle/features/details/widget/book_apartment_listiner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class BookingWidget extends StatelessWidget {
  final int apartmentid;
  const BookingWidget({super.key, required this.apartmentid});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.3,
      minChildSize: 0.2,
      maxChildSize: 0.5,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
          color: ColorsManager.offwhite(context),

            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(15),
              left: Radius.circular(15),
            ),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            controller: scrollController,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                       color: ColorsManager.isDark(context) 
                            ? Colors.white.withOpacity(0.1) 
                            : const Color(0xEBECF3FD),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back,color: ColorsManager.lightblack(context)),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        iconSize: 20,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                    SizedBox(width: 130.w),
                    Text(
                      "Booking",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Form(
                  key: context.read<BookingCubit>().formkey,
                  child: Row(
                    children: [
                      Expanded(
                        child: AppTextFormFeild(
                          controller: context
                              .read<BookingCubit>()
                              .startdatecontroller,
                          feildname: "start date",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "this feild can't be empty";
                            }
                          },
                          onTap: () => setTimeOnForm(context, "startdate"),
                        ),
                      ),
                      SizedBox(width: 30.w),
                      Expanded(
                        child: AppTextFormFeild(
                          feildname: "end date",
                          controller: context
                              .read<BookingCubit>()
                              .enddatecontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "this feild can't be empty";
                            }
                          },
                          onTap: () => setTimeOnForm(context, "end"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),

                AppTextButton(
                  onpressed: () {
                    if (!context
                        .read<BookingCubit>()
                        .formkey
                        .currentState!
                        .validate()) {
                      return;
                    }
                    context.read<BookingCubit>().emitbookapartment(
                      BookingRequestBody(
                        enddate: context
                            .read<BookingCubit>()
                            .enddatecontroller
                            .text,
                        roomid: apartmentid,
                        startdate: context
                            .read<BookingCubit>()
                            .startdatecontroller
                            .text,
                      ),
                    );
                  },
                  raduisbutton: 30,
                  textButton: "Book now",
                  textStyle: TextStyles.font16whitesemibold,
                ),
                BookApartmentListiner(),
              ],
            ),
          ),
        );
      },
    );
  }
}

void setTimeOnForm(BuildContext context, String feildname) async {
  DateTime? dateTime = await showDatePicker(
    context: context,
    firstDate: DateTime(2024),
    lastDate: DateTime(2027),
    initialDate: DateTime(2025),
  );

  if (dateTime != null) {
    if (feildname == "startdate") {
      context.read<BookingCubit>().startdatecontroller.text = DateFormat(
        'yyyy-MM-dd',
      ).format(dateTime);
    } else {
      context.read<BookingCubit>().enddatecontroller.text = DateFormat(
        'yyyy-MM-dd',
      ).format(dateTime);
    }
  }
}
