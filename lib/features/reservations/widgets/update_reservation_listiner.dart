import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/networking/api_error_handler.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/auth/info/widgets/sign_up_lisitner.dart';
import 'package:a7gzle/features/reservations/data/logic/update_reservation/update_reservation_cubit.dart';
import 'package:a7gzle/features/reservations/data/logic/update_reservation/update_reservation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateReservationListiner extends StatelessWidget {
  const UpdateReservationListiner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateReservationCubit, UpdateReservationState>(
      child: SizedBox.shrink(),
      listenWhen: (previous, current) =>
          current is UpdateReservationFailure ||
          current is UpdateReservationSuccess ||
          current is UpdatedReservationLoading,
      listener: (BuildContext context, state) {
        state.whenOrNull(
          updatereservationloading: () => CircularProgressIndicator(),
          updatereservationsuccess: (data) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Updated successfuly',
                  style: TextStyles.font16labelblackmideum,
                ),
                backgroundColor: ColorsManager.offwhite(context),
              ),
            );
            // context.pushNamed(RoutesConstant.userreservations);
          },
          updatereservationfailure: (exception) {
            context.pop();
            String message = ApiErrorHandler.handleApiError(exception);

            setupErrorState(context, message);
          },
        );
      },
    );
  }
}
