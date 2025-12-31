import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/reservations/data/logic/cancel_reservation/cancel_reservation_cubit.dart';
import 'package:a7gzle/features/reservations/data/logic/get_reservation_cubit/get_all_user_reservations_cubit.dart';
import 'package:a7gzle/features/reservations/data/logic/get_reservation_cubit/get_all_user_reservations_state.dart';
import 'package:a7gzle/features/reservations/data/model/user_reservations_response_body.dart';
import 'package:a7gzle/features/reservations/widgets/build_reservation_type_pending_list.dart';
import 'package:a7gzle/features/reservations/widgets/cancel_reservation_lisitner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserReservations extends StatefulWidget {
  const UserReservations({super.key});

  @override
  State<UserReservations> createState() => _UserReservationsState();
}

class _UserReservationsState extends State<UserReservations> {
  @override
  void initState() {
    super.initState();
    context.read<GetAllUserReservationsCubit>().emitGetAllUserReservations();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO:here is the color that we want to user in any background color
      backgroundColor: const Color.fromARGB(255, 246, 245, 245),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 246, 245, 245),
        title: Text("Check Your reservations"),
      ),
      body:
          BlocBuilder<GetAllUserReservationsCubit, GetAllUserReservationsState>(
            builder: (context, state) {
              return state.when(
                initial: SizedBox.shrink,
                reservationsloading: () {
                  return Center(child: CircularProgressIndicator());
                },
                reservationssuccess: (data) {
                  UserReservationsResponseBody userreservations = data;
                  return CustomScrollView(
                    slivers: [
                      _buildpending(userreservations),
                      BlocProvider(
                        create: (context) => getIt<CancelReservationCubit>(),
                        child: BuildrReservationTypeList(
                          ispending: true,
                          reservationBody: userreservations.pending,
                        ),
                      ),
                      _buildconfirmed(userreservations),
                      BuildrReservationTypeList(
                        reservationBody: userreservations.confirmed,
                      ),
                      _buildcancelled(userreservations),
                      BuildrReservationTypeList(
                        reservationBody: userreservations.cancelled,
                      ),
                      _buildrejected(userreservations),
                      BuildrReservationTypeList(
                        reservationBody: userreservations.rejected,
                      ),
                    ],
                  );
                },
                reservationsfailure: (error) {
                  return Center(child: Text("not working"));
                },
              );
            },
          ),
    );
  }

  SliverToBoxAdapter _buildrejected(
    UserReservationsResponseBody userreservations,
  ) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
        child: userreservations.rejected.isNotEmpty
            ? Text(
                'rejected',
                style: TextStyles.font20blacksemibold.copyWith(
                  fontFamily: "Rubik",
                ),
              )
            : SizedBox.shrink(),
      ),
    );
  }

  SliverToBoxAdapter _buildpending(
    UserReservationsResponseBody userreservations,
  ) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: userreservations.pending.isNotEmpty
            ? Text(
                'Pending',
                style: TextStyles.font20blacksemibold.copyWith(
                  fontFamily: "Rubik",
                ),
              )
            : SizedBox.shrink(),
      ),
    );
  }

  SliverToBoxAdapter _buildconfirmed(
    UserReservationsResponseBody userreservations,
  ) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
        child: userreservations.confirmed.isNotEmpty
            ? Text(
                'confirmed',
                style: TextStyles.font20blacksemibold.copyWith(
                  fontFamily: "Rubik",
                ),
              )
            : SizedBox.shrink(),
      ),
    );
  }

  SliverToBoxAdapter _buildcancelled(
    UserReservationsResponseBody userreservations,
  ) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
        child: userreservations.cancelled.isNotEmpty
            ? Text(
                'canceld',
                style: TextStyles.font20blacksemibold.copyWith(
                  fontFamily: "Rubik",
                ),
              )
            : SizedBox.shrink(),
      ),
    );
  }
}
