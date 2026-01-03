import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/core/theming/dark_mode/app_icon.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_text_button.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/models/apartment.dart';
import 'package:a7gzle/features/details/widget/apartment_property.dart';
import 'package:a7gzle/features/details/widget/book_nav_bar.dart';
import 'package:a7gzle/features/details/widget/booking_widget.dart';
import 'package:a7gzle/features/details/widget/gallery_section.dart';
import 'package:a7gzle/features/details/widget/location.dart';
import 'package:a7gzle/features/details/widget/overview.dart';
import 'package:a7gzle/features/details/widget/rate_and_apartment_type.dart';
import 'package:a7gzle/features/details/widget/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Details extends StatelessWidget {
  final Apartment apartment;
  const Details({super.key, required this.apartment});

  // final List imglist = [
  //   "assets/images/Image_details_2.png",
  //   "assets/images/Image_details.png",
  //   "assets/images/Image_details_3.png",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BookNavBar(
        apartmentid: apartment.id,
        price: apartment.price,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shadowColor: Colors.white,
            actions: [
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(right: 24.0.w),
               child:  AppIcon(path: "assets/svgs/favorite.svg"),
                ),
              ),
            ],
            expandedHeight: 400.h,
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 1,
            flexibleSpace: FlexibleSpaceBar(
              background: CarouselSlider(
                // items: imglist
                //     .map(
                //       (e) => Image.asset(
                //         e,
                //         width: double.infinity,
                //         fit: BoxFit.cover,
                //       ),
                //     )
                items: apartment.images
                    .map(
                      (e) => Image.network(
                        e.path,
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
                  Text(apartment.title, style: TextStyles.font24blackbold),
                  // Text("suuiiiiiiiiiii", style: TextStyles.font24blackbold),
                  SizedBox(height: 16.h),

                  RateAndApartmentType(apartmenttype: apartment.type),

                  SizedBox(height: 20.h),

                  ApartmentProperty(
                    bathnumber: apartment.bathrooms,
                    area: apartment.area,
                    roomnumber: apartment.rooms,
                  ),

                  SizedBox(height: 15.h),
                  Divider(),

                  SizedBox(height: 20.h),
                  Text("Agent", style: TextStyles.font20blacksemibold),

                  SizedBox(height: 12),

                  UserInfo(owner: apartment.owner),
                  SizedBox(height: 20.h),
                  Overview(description: apartment.description),
                  // Overview(description: "description"),
                  SizedBox(height: 20.h),
                  Location(location: apartment.city),
                  // Location(location: "damascus"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
