import 'dart:io';

import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_button.dart';
import 'package:a7gzle/features/auth/info/widgets/info_form_feild.dart';
import 'package:a7gzle/features/auth/info/widgets/sign_up_lisitner.dart';
import 'package:a7gzle/features/auth/signup/data/cubit/sign_up_cubit.dart';
import 'package:a7gzle/features/auth/signup/data/model/signup_request_body.dart';
import 'package:dio/dio.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  File? _profileImage;
  File? _frontIdImage;
  File? _backIdImage;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source, String imageType) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        final File imageFile = File(pickedFile.path);

        if (imageType == 'profile') {
          _profileImage = imageFile;
        } else if (imageType == 'frontId') {
          _frontIdImage = imageFile;
        } else if (imageType == 'backId') {
          _backIdImage = imageFile;
        }
      });
    }
  }

  Widget _buildDottedImageContainer(File? imageFile, String imageType) {
    return Expanded(
      child: DottedBorder(
        child: SizedBox(
          width: double.infinity,
          height: 200,
          child: imageFile != null
              ? InkWell(
                  child: Image.file(imageFile, fit: BoxFit.cover),
                  onTap: () => _pickImage(ImageSource.gallery, imageType),
                )
              : IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => _pickImage(ImageSource.gallery, imageType),
                ),
        ),
      ),
    );
  }

  bool _validateImages(BuildContext context) {
    if (_profileImage == null ||
        _frontIdImage == null ||
        _backIdImage == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("you should insert all the requierd photos"),
          backgroundColor: Colors.red,
        ),
      );
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Fill Your Profile", style: TextStyles.font24mainbluebold),
                SizedBox(height: 10.h),
                Text(
                  "Please take a few minutes to fill out your profile\nwith as much detail as possible.",
                  style: TextStyles.font16lightergrayregular,
                ),
                SizedBox(height: 37.h),
                Center(
                  child: SizedBox(
                    width: 120.h,
                    height: 120.h,
                    child: Stack(
                      children: [
                        _profileImage != null
                            ? ClipOval(
                                child: Image.file(
                                  _profileImage!,
                                  fit: BoxFit.cover,
                                  width: 120.h,
                                  height: 120.h,
                                ),
                              )
                            : Image.asset("assets/images/default_profile.png"),
                        Positioned(
                          bottom: 0,
                          right: -7,
                          child: IconButton(
                            onPressed: () =>
                                _pickImage(ImageSource.gallery, 'profile'),
                            icon: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 15,
                              child: Icon(
                                Icons.edit,
                                color: ColorsManager.mainBlue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 27.h),
                InfoFormFeild(),

                SizedBox(height: 25.h),
                Text("Insert Your ID", style: TextStyles.font24mainbluebold),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildDottedImageContainer(_frontIdImage, 'frontId'),
                    SizedBox(width: 15.w),

                    _buildDottedImageContainer(_backIdImage, 'backId'),
                  ],
                ),
                SizedBox(height: 30.h),
                AppTextButton(
                  onpressed: () async {
                    if (!_validateImages(context)) return;
                    if (!context
                        .read<SignUpCubit>()
                        .secondepagekeyform
                        .currentState!
                        .validate()) {
                      return;
                    }
                    final profileimage = await MultipartFile.fromFile(
                      _profileImage!.path,
                      filename: _profileImage!.path.split('/').last,
                    );

                    final backid = await MultipartFile.fromFile(
                      _backIdImage!.path,
                      filename: _backIdImage!.path.split('/').last,
                    );
                    final frontid = await MultipartFile.fromFile(
                      _frontIdImage!.path,
                      filename: _frontIdImage!.path.split('/').last,
                    );

                    context.read<SignUpCubit>().emitsignUp(
                      SignupRequestBody(
                        number: context
                            .read<SignUpCubit>()
                            .numbercontroller
                            .text,
                        password: context
                            .read<SignUpCubit>()
                            .passwordcontroller
                            .text,
                        passwordconfirmation: context
                            .read<SignUpCubit>()
                            .passwordconfirmationcontroller
                            .text,
                        firstname: context
                            .read<SignUpCubit>()
                            .firstnamecontooler
                            .text,
                        lastname: context
                            .read<SignUpCubit>()
                            .lastnamecontroller
                            .text,
                        birthdate: context
                            .read<SignUpCubit>()
                            .birthdatecontroller
                            .text,
                        type: "owner",
                        backid: backid,
                        frontid: frontid,
                        profileimage: profileimage,
                      ),
                    );
                  },
                  textButton: "Submit",
                  textStyle: TextStyles.font16whitesemibold,
                ),
                SignUpLisitner(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
