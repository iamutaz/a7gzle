import 'package:a7gzle/features/auth/info/widgets/sign_up_lisitner.dart';
import 'package:a7gzle/features/notification/data/cubit/handling_reservation_cubit.dart';
import 'package:a7gzle/features/notification/data/cubit/handling_reservation_state.dart';
import 'package:a7gzle/features/notification/data/cubit/owner_reservation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OwnerReservationListiner extends StatelessWidget {
  const OwnerReservationListiner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HandlingReservationCubit, HandlingReservationState>(
      listenWhen: (previous, current) {
        return current is HandlingReservationFailure ||
            current is HandlingReservationSuccess;
      },
      listener: (context, state) {
        state.whenOrNull(
          handlingreservationsuccess: (data) {
            context.read<OwnerReservationCubit>().emitGetOwnerReservation();
          },
          handlingreservationfailure: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
