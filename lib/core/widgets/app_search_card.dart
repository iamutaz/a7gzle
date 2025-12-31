import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/searched_apartment_card_model.dart';
import 'package:a7gzle/features/reservations/data/model/user_reservations_response_body.dart';
import 'package:a7gzle/features/reservations/widgets/cancel_reservation_lisitner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSearchCard extends StatelessWidget {
  final SearchedApartmentCardModel searchedApartmentCardModel;
  void Function()? oncancelTap;
  bool? ispending;
  AppSearchCard({
    super.key,
    this.oncancelTap,
    required this.searchedApartmentCardModel,
    this.ispending,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w, bottom: 10.h),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: ColorsManager.offwhite(context),
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                searchedApartmentCardModel.imagepath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 20.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  searchedApartmentCardModel.apartmentname,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font18blacksemibold,
                ),

                Text(
                  searchedApartmentCardModel.city,
                  style: TextStyles.font16neartograyregular,
                ),
                SizedBox(height: 10.h),
                ispending == true
                    ? InkWell(
                        child: Text(
                          "Edit",
                          style: TextStyles.font18mainbluesemibold,
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
            Spacer(),
            SizedBox(
              height: 90.h,
              child: Column(
                children: [
                  ispending == true
                      ? IconButton(
                          icon: Icon(Icons.remove_circle, color: Colors.red),
                          onPressed: oncancelTap,
                        )
                      : SizedBox.shrink(),
                  Spacer(),
                  Text(
                    "${searchedApartmentCardModel.price}\$",
                    style: TextStyles.font18mainbluesemibold,
                  ),
                  ispending == true
                      ? CancelReservationLisitner()
                      : SizedBox.shrink(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
