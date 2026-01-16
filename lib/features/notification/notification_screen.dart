import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/notification/data/cubit/handling_reservation_cubit.dart';
import 'package:a7gzle/features/notification/data/model/notification_section.dart';
import 'package:a7gzle/features/notification/data/helper/notification_grouping_helper.dart';
import 'package:a7gzle/features/notification/widget/owner_notification_container_body.dart';
import 'package:a7gzle/features/notification/data/cubit/owner_reservation_cubit.dart';
import 'package:a7gzle/features/notification/data/cubit/owner_reservation_state.dart';
import 'package:a7gzle/features/notification/data/model/owner_reservation_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    super.initState();
    context.read<OwnerReservationCubit>().emitGetOwnerReservation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications")),
      body: BlocBuilder<OwnerReservationCubit, OwnerReservationState>(
        builder: (context, state) {
          return state.when(
            ownerreservationinitial: () => SizedBox.shrink(),
            ownerreservationloading: () =>
                Center(child: CircularProgressIndicator()),
            ownerreservationsuccess: (data) {
              OwnerReservationResponseBody ownerreservations = data;
              final grouped = groupReservationByDate(ownerreservations.data);
              return ListView(
                children: [
                  if (grouped[NotificationSection.today]!.isNotEmpty) ...[
                    const _SectionTitle(title: "Today"),
                    ...grouped[NotificationSection.today]!.map(
                      (item) => BlocProvider(
                        create: (context) => getIt<HandlingReservationCubit>(),
                        child: OwnerNotificationContainerBody(
                          reservationid: item.reservationid,
                          tenantname: item.rentername,
                          enddate: item.enddate,
                          startdate: item.startdate,
                          apartmentname: item.apartmentname,
                          createdAt: item.creatdeat,
                          status: item.status,
                        ),
                      ),
                    ),
                  ],
                  if (grouped[NotificationSection.yesterday]!.isNotEmpty) ...[
                    const _SectionTitle(title: "Yesterday"),
                    ...grouped[NotificationSection.yesterday]!.map(
                      (item) => BlocProvider(
                        create: (context) => getIt<HandlingReservationCubit>(),
                        child: OwnerNotificationContainerBody(
                          reservationid: item.reservationid,

                          tenantname: item.rentername,
                          apartmentname: item.apartmentname,
                          startdate: item.startdate,
                          enddate: item.enddate,
                          createdAt: item.creatdeat,
                          status: item.status,
                        ),
                      ),
                    ),
                  ],
                  if (grouped[NotificationSection.older]!.isNotEmpty) ...[
                    const _SectionTitle(title: "Older"),
                    ...grouped[NotificationSection.older]!.map(
                      (item) => BlocProvider(
                        create: (context) => getIt<HandlingReservationCubit>(),
                        child: OwnerNotificationContainerBody(
                          reservationid: item.reservationid,

                          tenantname: item.rentername,
                          apartmentname: item.apartmentname,
                          startdate: item.startdate,
                          enddate: item.enddate,
                          createdAt: item.creatdeat,
                          status: item.status,
                        ),
                      ),
                    ),
                  ],
                ],
              );
            },
            ownerreservationfailure: (error) {
              return Center(child: Text(error));
            },
          );
        },
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
      child: Text(title, style: TextStyles.font12morelightgraymiduem),
    );
  }
}
