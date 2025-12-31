import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/reservations/data/cubit/get_all_user_reservations_cubit.dart';
import 'package:a7gzle/features/reservations/data/cubit/get_all_user_reservations_state.dart';
import 'package:a7gzle/features/reservations/data/model/user_reservations_response_body.dart';
import 'package:a7gzle/features/reservations/widgets/build_pending_list.dart';
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
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 246, 245, 245)),
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
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 16.h,
                          ),
                          child: userreservations.pending.isNotEmpty
                              ? Text(
                                  'Pending',
                                  style: TextStyles.font20blacksemibold
                                      .copyWith(fontFamily: "Rubik"),
                                )
                              : SizedBox.shrink(),
                        ),
                      ),
                      BuildPendingList(
                        reservationBody: userreservations.pending,
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 10.h,
                          ),
                          child: userreservations.confirmed.isNotEmpty
                              ? Text(
                                  'confirmed',
                                  style: TextStyles.font20blacksemibold
                                      .copyWith(fontFamily: "Rubik"),
                                )
                              : SizedBox.shrink(),
                        ),
                      ),
                      BuildPendingList(
                        reservationBody: userreservations.confirmed,
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 10.h,
                          ),
                          child: userreservations.cancelled.isNotEmpty
                              ? Text(
                                  'canceld',
                                  style: TextStyles.font20blacksemibold
                                      .copyWith(fontFamily: "Rubik"),
                                )
                              : SizedBox.shrink(),
                        ),
                      ),
                      BuildPendingList(
                        reservationBody: userreservations.cancelled,
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 10.h,
                          ),
                          child: userreservations.rejected.isNotEmpty
                              ? Text(
                                  'rejected',
                                  style: TextStyles.font20blacksemibold
                                      .copyWith(fontFamily: "Rubik"),
                                )
                              : SizedBox.shrink(),
                        ),
                      ),
                      BuildPendingList(
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
}
