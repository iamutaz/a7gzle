import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/networking/api_error_handler.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/features/auth/info/widgets/sign_up_lisitner.dart';
import 'package:a7gzle/features/reservations/data/logic/cancel_reservation/cancel_reservation_cubit.dart';
import 'package:a7gzle/features/reservations/data/logic/cancel_reservation/cancel_reservation_state.dart';
import 'package:a7gzle/features/reservations/data/logic/cancel_reservation/cancel_reservation_cubit.dart';
import 'package:a7gzle/features/reservations/data/logic/cancel_reservation/cancel_reservation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CancelReservationLisitner extends StatelessWidget {
  const CancelReservationLisitner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CancelReservationCubit, CancelReservationState>(
      listenWhen: (previous, current) =>
          current is CancelReservationsLoading ||
          current is CancelReservationsSuccess ||
          current is CancelReservationsFailure,
      listener: (context, state) {
        state.whenOrNull(
          cancelreservationloading: () => CircularProgressIndicator(),
          cancelreservationsuccess: (data) {
            context.pop();
            context.pushNamed(RoutesConstant.userreservations);
          },
          cancelreservationfailure: (exception) {
            context.pop();
            String message = ApiErrorHandler.handleApiError(exception);

            setupErrorState(context, message);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
