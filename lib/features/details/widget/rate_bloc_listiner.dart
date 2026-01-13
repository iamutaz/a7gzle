import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/networking/api_error_handler.dart';
import 'package:a7gzle/features/auth/info/widgets/sign_up_lisitner.dart';
import 'package:a7gzle/features/details/data/cubit/rate_apartment_cubit.dart';
import 'package:a7gzle/features/details/data/cubit/rate_apartment_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RateBlocListiner extends StatelessWidget {
  const RateBlocListiner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RateApartmentCubit, RateApartmentState>(
      listener: (context, state) {
        state.whenOrNull(
          ratingloading: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(child: CircularProgressIndicator());
              },
            );
          },
          ratingsuccess: (data) async {
            context.pop();
            context.pop();
            ScaffoldMessenger.of(
              context,
            ).showSnackBar( SnackBar(content: Text('Rated successfully'.tr())));
          },
          ratingfailure: (error) {
            // String message = ApiErrorHandler.handleApiError(error);

            setupErrorState(context, error);
          },
        );
      },
      listenWhen: (previous, current) =>
          current is RatingLoading ||
          current is RatingFailure ||
          current is RatingSuccess,
      child: SizedBox.shrink(),
    );
  }
}
