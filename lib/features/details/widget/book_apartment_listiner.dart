import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/networking/api_error_handler.dart';
import 'package:a7gzle/features/details/data/cubit/booking_cubit.dart';
import 'package:a7gzle/features/details/data/cubit/booking_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookApartmentListiner extends StatelessWidget {
  const BookApartmentListiner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BookingCubit, BookingState>(
      listenWhen: (previous, current) {
        return current is BookingLoading ||
            current is BookingSuccess ||
            current is BookingFailure;
      },
      listener: (context, state) {
        state.whenOrNull(
          bookingloading: () => CircularProgressIndicator(),

          bookingsuccess: (data) {
            context.pop();
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(const SnackBar(content: Text('booked successfuly')));
          },
          bookingfailure: (exception) {
            context.pop();
            String message = ApiErrorHandler.handleApiError(exception);

            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
