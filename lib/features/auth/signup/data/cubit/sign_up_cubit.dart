import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/helpers/user_model.dart';
import 'package:a7gzle/core/networking/api_result.dart';
import 'package:a7gzle/features/auth/login/data/model/login_response_body.dart';
import 'package:a7gzle/features/auth/signup/data/cubit/sign_up_state.dart';
import 'package:a7gzle/features/auth/signup/data/model/signup_request_body.dart';
import 'package:a7gzle/features/auth/signup/data/repo/sign_up_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SignUpCubit extends Cubit<SignUpState> {
  // ignore: prefer_final_fields
  SignUpRepo _signUpRepo;

  // controllers
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController passwordconfirmationcontroller =
      TextEditingController();

  TextEditingController birthdatecontroller = TextEditingController();
  TextEditingController firstnamecontooler = TextEditingController();

  TextEditingController lastnamecontroller = TextEditingController();

  final ValueNotifier<String> userTypeController = ValueNotifier<String>(
    'owner',
  );

  String? profileImagePath;

  final firstpagekeyform = GlobalKey<FormState>();
  final secondepagekeyform = GlobalKey<FormState>();

  SignUpCubit(this._signUpRepo) : super(SignUpState.initial());

  void emitsignUp(SignupRequestBody signuprequestbody) async {
    emit(SignUpState.signuploading());
    final response = await _signUpRepo.signup(signuprequestbody);
    response.when(
      success: (data) {
        print("success in cubit");

        emit(SignUpState.signupsuccess(data));
      },

      failure: (error) {
        print("fail in cubit");
        emit(SignupFailure(exception: error));
      },
    );
  }

  void setProfileImagePath(String path) {
    profileImagePath = path;
  }
}
