import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_form_feild.dart';
import 'package:a7gzle/features/auth/signup/data/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class InfoFormFeild extends StatelessWidget {
  const InfoFormFeild({super.key});
  void setTimeOnForm(BuildContext context) async {
    DateTime? dateTime = await showDatePicker(
      context: context,
      firstDate: DateTime(1960),
      lastDate: DateTime.now(),
      initialDate: DateTime(2002),
    );

    if (dateTime != null) {
      context.read<SignUpCubit>().birthdatecontroller.text = DateFormat(
        'yyyy-MM-dd',
      ).format(dateTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().secondepagekeyform,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AppTextFormFeild(
                  controller: context.read<SignUpCubit>().firstnamecontooler,
                  feildname: "First Name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "this feild can't be empty";
                    }
                  },
                ),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: AppTextFormFeild(
                  controller: context.read<SignUpCubit>().lastnamecontroller,
                  feildname: "Seconde Name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "this feild can't be empty";
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),

          AppTextFormFeild(
            controller: context.read<SignUpCubit>().birthdatecontroller,
            feildname: "Birth Date",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "this feild can't be empty";
              }
            },
            onTap: () => setTimeOnForm(context),
          ),
          SizedBox(height: 15.h),
          ValueListenableBuilder<String>(
            valueListenable: context.read<SignUpCubit>().userTypeController,
            builder: (context, value, _) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("User Type", style: TextStyles.font18blackmideum),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile<String>(
                          title: Text(
                            "Owner",
                            style: TextStyles.font14blackmideum,
                          ),
                          value: "owner",
                          groupValue: value,
                          onChanged: (val) {
                            context
                                    .read<SignUpCubit>()
                                    .userTypeController
                                    .value =
                                val!;
                            print(
                              context
                                  .read<SignUpCubit>()
                                  .userTypeController
                                  .value,
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<String>(
                          title: Text(
                            "Tennat",
                            style: TextStyles.font14blackmideum,
                          ),
                          value: "tenant",
                          groupValue: value,
                          onChanged: (val) {
                            context
                                    .read<SignUpCubit>()
                                    .userTypeController
                                    .value =
                                val!;
                            print(
                              context
                                  .read<SignUpCubit>()
                                  .userTypeController
                                  .value,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
