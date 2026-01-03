import 'package:a7gzle/core/helpers/extension.dart';
import 'package:a7gzle/core/routing/routes_constant.dart';
import 'package:a7gzle/core/theming/dark_mode/app_icon.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_form_feild.dart';
import 'package:a7gzle/features/Home/search/widget/filter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Search for Your Ideal Home",
          style: TextStyles.font18blackbold,
        ),
        leading: SizedBox.shrink(),
        actions: [
          InkWell(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: AppIcon(path: "assets/svgs/settings/notifaication.svg"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30),
          child: Column(
            children: [
              AppTextFormFeild(
                suffixIcon: InkWell(
                  onTap: () {
                    _openFilter(context);
                  },
                 child: AppIcon(path: "assets/svgs/filter.svg"),
                ),
                borderRadius: BorderRadius.circular(20),
                feildname: "search for location",
                validator: (value) {},
                onTap: () {
                  _openFilter(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _openFilter(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => const FilterScreen(),
  );
}
