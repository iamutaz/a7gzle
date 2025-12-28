import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/networking/api_error_handler.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/cubit/create_apartment_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/cubit/create_apartment_state.dart';
import 'package:a7gzle/features/auth/info/widgets/sign_up_lisitner.dart';
import 'package:a7gzle/features/auth/login/data/logic/cubit/login_cubit.dart';
import 'package:a7gzle/features/auth/login/data/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateApartmentLisitner extends StatelessWidget {
  const CreateApartmentLisitner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateApartmentCubit, CreateApartmentState>(
      listener: (context, state) {
        state.whenOrNull(
          createapartmentloading: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(child: CircularProgressIndicator());
              },
            );
          },
          createapartmentsuccess: (data) async {
            context.pop();
            context.read<CreateApartmentCubit>().clearControllers();
          },
          createapartmentfailure: (error) {
            String message = ApiErrorHandler.handleApiError(error);

            setupErrorState(context, message);
          },
        );
      },
      listenWhen: (previous, current) =>
          current is CreateApartmentStateLoading ||
          current is CreateApartmentStateSuccess ||
          current is CreateApartmentStateFailure,
      child: SizedBox.shrink(),
    );
  }
}
