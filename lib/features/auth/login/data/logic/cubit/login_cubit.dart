import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/auth/login/data/logic/cubit/login_state.dart';
import 'package:a7gzle/features/auth/login/data/model/login_request_body.dart';
import 'package:a7gzle/features/auth/login/data/repo/login_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  final LoginRepo _loginRepo;
  TextEditingController numberController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  LoginCubitCubit(this._loginRepo) : super(LoginCubitState.initial());

  void emitLoginState(LoginRequestBody loginrequesbody) async {
    emit(LoginCubitState.loginloading());
    final response = await _loginRepo.login(loginrequesbody);
    response.when(
      success: (loginResponseBody) {
        emit(LoginCubitState.loginsuccess(loginResponseBody));
      },
      failure: (error) {},
    );
  }
}
