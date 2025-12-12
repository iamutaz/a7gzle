import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Details extends StatelessWidget {
  Details({super.key});

  final List imglist = [
    "assets/images/Image_details_2.png",
    "assets/images/Image_details.png",
    "assets/images/Image_details_3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shadowColor: Colors.white,
            actions: [
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(right: 24.0.w),
                  child: SvgPicture.asset("assets/svgs/favorite.svg"),
                ),
              ),
            ],
            expandedHeight: 400.h,
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 1,
            flexibleSpace: FlexibleSpaceBar(
              background: CarouselSlider(
                items: imglist
                    .map(
                      (e) => Image.asset(
                        e,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    )
                    .toList(),
                options: CarouselOptions(viewportFraction: 1, height: 450.h),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Modrnica Apartment", style: TextStyles.font24blackbold),
                  SizedBox(height: 16.h),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: ColorsManager.sui,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          "Apartment",
                          style: TextStyles.font13mainbluesemibold,
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset("assets/svgs/star.svg"),
                          SizedBox(width: 8),
                          Text(
                            "4950",
                            style: TextStyles.font14neartograymiduem,
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildHomeProperty(
                        path: "assets/svgs/bed.svg",
                        text: "8 beds",
                      ),
                      _buildHomeProperty(
                        path: "assets/svgs/bath.svg",
                        text: "3 bath",
                        height: 25,
                      ),
                      _buildHomeProperty(
                        path: "assets/svgs/distance.svg",
                        text: "200 hec",
                        height: 22,
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Divider(),

                  SizedBox(height: 20.h),
                  Text("Agent", style: TextStyles.font24blackbold),

                  SizedBox(height: 12),
                  Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/images/default_profile.png",
                          width: 60,
                          height: 60,
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Natasha", style: TextStyles.font18blackmideum),
                          SizedBox(height: 6),
                          Text(
                            "Owner",
                            style: TextStyles.font14neartograymiduem,
                          ),
                        ],
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        "assets/svgs/messag_icon.svg",
                        width: 28,
                        height: 28,
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),
                  Text("Overview", style: TextStyles.font24blackbold),
                  SizedBox(height: 10),
                  Text(
                    "Sleek, modern 2-bedroom apartment with open living space, high-end finishes, and city views. Minutes from downtown, dining, and transit.",
                    style: TextStyles.font16neartograyregular,
                  ),
                  SizedBox(height: 3000.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Row _buildHomeProperty({
  required String path,
  required String text,
  double? height,
}) {
  return Row(
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: ColorsManager.sui,
        child: SvgPicture.asset(
          path,
          width: 18,
          height: height ?? 18,
          colorFilter: ColorFilter.mode(
            ColorsManager.mainBlue,
            BlendMode.srcIn,
          ),
        ),
      ),
      SizedBox(width: 10.w),
      Text(text, style: TextStyles.font14blackmideum),
    ],
  );
}
