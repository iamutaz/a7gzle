import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/features/Home/explore/explore_screen.dart';
import 'package:a7gzle/features/Home/search/search_screen.dart';
import 'package:a7gzle/features/Home/settings/data/cubit/logout_cubit.dart';
import 'package:a7gzle/features/Home/settings/data/repo/logout_repo.dart';
import 'package:a7gzle/features/Home/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;
  List<Widget> pages = [
    BlocProvider(
      create: (context) => getIt<LogoutCubit>(),
      child: ExploreScreen(),
    ),
    BlocProvider(
      create: (context) => getIt<LogoutCubit>(),
      child: SearchScreen(),
    ),
    BlocProvider(
      create: (context) => getIt<LogoutCubit>(),
      child: SettingsScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: Color(0xff0061FF),
        unselectedItemColor: Color(0xff8C8E98),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
