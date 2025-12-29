import 'package:a7gzle/core/helpers/constant.dart';
import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/helpers/user_model.dart';
import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/core/networking/dio_factory.dart';
import 'package:a7gzle/features/auth/login/data/logic/cubit/login_state.dart';
import 'package:a7gzle/features/auth/login/data/model/login_request_body.dart';
import 'package:a7gzle/features/auth/login/data/repo/login_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  final LoginRepo _loginRepo;
  TextEditingController numberController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String? usertype;
  final formkey = GlobalKey<FormState>();
  LoginCubitCubit(this._loginRepo) : super(LoginCubitState.initial());

  void emitLoginState(LoginRequestBody loginrequesbody) async {
    emit(LoginCubitState.loginloading());
    final response = await _loginRepo.login(loginrequesbody);
    response.when(
      success: (loginResponseBody) async {
        await saveUserToken(loginResponseBody.token);
        usertype = loginResponseBody.user.type;

        await saveUserStatus(loginResponseBody.user.status);

        //for save user type "tenant - owner"
        await SharedPrefHelper.setData(
          SharedPrefKeys.usertype,
          loginResponseBody.user.type,
        );
        // for save user
        SharedPrefHelper.saveUser(
          UserModel(
            firstname: loginResponseBody.user.firstname,
            lastname: loginResponseBody.user.lastname,
            type: loginResponseBody.user.type,
          ),
        );
        emit(LoginCubitState.loginsuccess(loginResponseBody));
      },
      failure: (error) {},
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }

  ///FROZEN - acsepted - pending
  Future<void> saveUserStatus(String status) async {
    await SharedPrefHelper.removeData(SharedPrefKeys.userstatus);

    await SharedPrefHelper.setData(SharedPrefKeys.userstatus, status);
  }
}
