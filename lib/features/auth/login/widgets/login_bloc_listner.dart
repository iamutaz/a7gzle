import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/helpers/constant.dart';
import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/networking/api_error_handler.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/auth/login/data/logic/cubit/login_cubit.dart';
import 'package:a7gzle/features/auth/login/data/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubitCubit, LoginCubitState>(
      listener: (context, state) {
        state.whenOrNull(
          loginloading: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Center(child: CircularProgressIndicator());
              },
            );
          },
          loginsuccess: (data) async {
            context.pop();
            String status = await SharedPrefHelper.getString(
              SharedPrefKeys.userstatus,
            );
            print(status);

            if (await SharedPrefHelper.getString(SharedPrefKeys.userstatus) ==
                "active") {
              context.pushNamed(RoutesConstant.home);
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(),
                      body: Center(child: Text("pending")),
                    );
                  },
                ),
              );
            }
          },
          loginfailure: (error) {
            String message = ApiErrorHandler.handleApiError(error);

            setupErrorState(context, message);
          },
        );
      },
      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginSuccess ||
          current is LoginFailure,
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
