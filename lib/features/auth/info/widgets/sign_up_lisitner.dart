import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/networking/api_error_handler.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/auth/signup/data/cubit/sign_up_cubit.dart';
import 'package:a7gzle/features/auth/signup/data/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpLisitner extends StatelessWidget {
  const SignUpLisitner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        state.whenOrNull(
          signuploading: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(child: CircularProgressIndicator());
              },
            );
          },
          signupsuccess: (data) {
            print("success in listner");
            context.pop();
            context.pushNamed(RoutesConstant.login);
          },
          signupfailure: (error) {
            print("error in listner");
            String message = ApiErrorHandler.handleApiError(error);

            setupErrorState(context, message);
          },
        );
      },
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupFailure,
      child: SizedBox.shrink(),
    );
  }
}

void setupErrorState(BuildContext context, String errormessage) {
  context.pop();
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        icon: Icon(Icons.error, color: Colors.red),
        content: Text(errormessage, style: TextStyles.font18blackmideum),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text("back"),
          ),
        ],
      );
    },
  );
}
