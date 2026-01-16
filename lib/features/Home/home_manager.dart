import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/theming/colors_manager.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/cubit/create_apartment_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/owner/owner_screen.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/favorite_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/tenant_screen.dart';
import 'package:a7gzle/features/Home/search/search_screen.dart';
import 'package:a7gzle/features/Home/settings/data/cubit/logout_cubit.dart';
import 'package:a7gzle/features/Home/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeManager extends StatefulWidget {
  final String usertype;
  const HomeManager({super.key, required this.usertype});

  @override
  State<HomeManager> createState() => _HomeManagerState();
}

class _HomeManagerState extends State<HomeManager> {
  int currentindex = 0;
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    print(widget.usertype);

    if (widget.usertype == "tenant") {
      pages = [
        MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<AllapartmentCubit>()),
            BlocProvider(create: (context) => getIt<FavoriteCubit>()),
          ],
          child: TenantScreen(),
        ),
        BlocProvider(
          create: (context) => getIt<FavoriteCubit>(),
          child: SearchScreen(),
        ),
        BlocProvider(
          create: (context) => getIt<LogoutCubit>(),
          child: SettingsScreen(usertype: widget.usertype),
        ),
      ];
    } else {
      pages = [
        BlocProvider(
          create: (context) => getIt<CreateApartmentCubit>(),
          child: OwnerScreen(),
        ),
        // SearchScreen(),
        BlocProvider(
          create: (context) => getIt<LogoutCubit>(),
          child: SettingsScreen(usertype: widget.usertype),
        ),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 26.0, top: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GNav(
              selectedIndex: currentindex,
              onTabChange: (index) {
                setState(() {
                  currentindex = index;
                });
              },
              gap: 4,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              tabBackgroundColor: ColorsManager.mainBlue,
              activeColor: ColorsManager.offwhite(context),
              color: const Color(0xff8C8E98),
              iconSize: 24,
              tabMargin: EdgeInsets.symmetric(horizontal: 15.w),
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: ColorsManager.offwhite(context),
              ),
              tabs: widget.usertype == "tenant"
                  ? const [
                      GButton(icon: Icons.home_outlined, text: 'Home'),
                      GButton(icon: Icons.search_outlined, text: 'Explore'),
                      GButton(icon: Icons.person_outline, text: 'Profile'),
                    ]
                  : const [
                      GButton(icon: Icons.home, text: 'Home'),
                      GButton(icon: Icons.person_outline, text: 'Profile'),
                    ],
            ),
          ],
        ),
      ),
    );
  }
}
