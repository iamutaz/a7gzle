import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/helpers/user_model.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/cubit/create_apartment_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/cubit/create_apartment_state.dart';
import 'package:a7gzle/features/Home/home_screen/owner/owner_screen.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/tenant_screen.dart';
import 'package:a7gzle/features/Home/search/search_screen.dart';
import 'package:a7gzle/features/Home/settings/data/cubit/logout_cubit.dart';
import 'package:a7gzle/features/Home/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        BlocProvider(
          create: (context) => getIt<AllapartmentCubit>(),
          child: TenantScreen(),
        ),
        SearchScreen(),
        BlocProvider(
          create: (context) => getIt<LogoutCubit>(),
          child: SettingsScreen(),
        ),
      ];
    } else {
      pages = [
        BlocProvider(
          create: (context) => getIt<CreateApartmentCubit>(),
          child: OwnerScreen(),
        ),
        SearchScreen(),
        BlocProvider(
          create: (context) => getIt<LogoutCubit>(),
          child: SettingsScreen(),
        ),
      ];
    }
  }

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
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              widget.usertype == "tenant" ? Icons.home_outlined : Icons.add,
            ),
            activeIcon: Icon(
              widget.usertype == "tenant" ? Icons.home : Icons.add,
            ),
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





// import 'package:flutter/material.dart';

// class Home extends StatelessWidget {
//   Home({super.key});


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0,
//         onTap: (index) {},
//         backgroundColor: Colors.white,
//         elevation: 0,
//         selectedItemColor: Color(0xff0061FF),
//         unselectedItemColor: Color(0xff8C8E98),
//         selectedFontSize: 12,
//         unselectedFontSize: 12,
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             activeIcon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search_outlined),
//             activeIcon: Icon(Icons.search),
//             label: 'Explore',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             activeIcon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
