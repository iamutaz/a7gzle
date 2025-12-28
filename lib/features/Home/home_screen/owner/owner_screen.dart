import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/home_screen/owner/widget/create_apartment_form_feild.dart';
import 'package:a7gzle/features/Home/home_screen/owner/widget/create_apartment_lisitner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OwnerScreen extends StatelessWidget {
  const OwnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Apartment",
                      style: TextStyles.font24mainbluebold,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "create your apartment listing and showcase all the features that make it unique. Add details, photos,  and start reaching potential tenants easily",
                      style: TextStyles.font17lightgrayregular,
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                CreateApartmentFormFeild(),
                CreateApartmentLisitner(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
