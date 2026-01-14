import 'package:a7gzle/core/helpers/font_weight_helper.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/notification/data/cubit/handling_reservation_cubit.dart';
import 'package:a7gzle/features/notification/data/helper/notification_grouping_helper.dart';
import 'package:a7gzle/features/notification/data/model/reservation_notification_request_body.dart';
import 'package:a7gzle/features/notification/widget/owner_reservation_listiner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

class OwnerNotificationContainerBody extends StatelessWidget {
  final String tenantname;
  final String apartmentname;
  final String startdate;
  final String enddate;
  int reservationid;
  String createdAt;
  String status;
  OwnerNotificationContainerBody({
    super.key,
    required this.reservationid,
    required this.createdAt,
    required this.status,
    required this.tenantname,
    required this.enddate,
    required this.startdate,
    required this.apartmentname,
  });

  @override
  Widget build(BuildContext context) {
    if (status == "pending") {
      return Slidable(
        startActionPane: ActionPane(
          extentRatio: 0.25,
          motion: const ScrollMotion(),
          children: [
            CustomSlidableAction(
              backgroundColor: Colors.red,
              onPressed: (BuildContext context) {
                context
                    .read<HandlingReservationCubit>()
                    .emitHandlingreservation(
                      ReservationNotificationRequestBody(
                        action: "reject",
                        reservationid: reservationid,
                      ),
                    );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.clear, size: 30), Text("Reject")],
              ),
            ),
          ],
        ),
        endActionPane: ActionPane(
          extentRatio: 0.25,
          motion: const ScrollMotion(),
          children: [
            CustomSlidableAction(
              backgroundColor: Colors.green,
              onPressed: (BuildContext context) {
                context
                    .read<HandlingReservationCubit>()
                    .emitHandlingreservation(
                      ReservationNotificationRequestBody(
                        action: "approve",
                        reservationid: reservationid,
                      ),
                    );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.done, size: 30), Text("Accept")],
              ),
            ),
          ],
        ),
        child: _buildNotificationContainer(context),
      );
    }
    return _buildNotificationContainer(context);
  }

  Container _buildNotificationContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      decoration: BoxDecoration(color: ColorsManager.scaffoldColor(context)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: SvgPicture.asset(getNotificationStatusIcon(status)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 20.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OwnerReservationListiner(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        getNotificationTitle(status),
                        style: TextStyles.font16labelblackmideum.copyWith(
                          fontWeight: FontWeightHelper.semibold,
                        ),
                      ),
                      Text(
                        formatNotificationTime(createdAt),
                        style: TextStyles.font12morelightgrayregular,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),

                  Text(
                    getNotificationdescription(
                      status,
                      tenantname,
                      startdate,
                      enddate,
                      apartmentname,
                    ),
                    style: TextStyles.font12grayregular,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
