import 'package:coffee_boss/Features/coffee_owner/presentation/views/owner_home_screen.dart';
import 'package:coffee_boss/Features/coffee_owner/presentation/views/owner_profile_screen.dart';
import 'package:coffee_boss/Features/coffee_owner/presentation/views/owner_servers_screen.dart';
import 'package:coffee_boss/Features/coffee_owner/presentation/views/owner_stats_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../core/common/const.dart';

class OwnerHomeView extends StatefulWidget {
  const OwnerHomeView({super.key});

  @override
  State<OwnerHomeView> createState() => _OwnerHomeViewState();
}

class _OwnerHomeViewState extends State<OwnerHomeView> {
  List<Widget> screens = [
    OwnerHomeScreen(),
    OwnerServersScreen(),
    OwnerStatsScreen(),
    OwnerProfileScreen()
  ];
  int index = 0;
  didSelected(int _index) {
    setState(() {
      index = _index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Servers"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Stats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        showUnselectedLabels: false,
        currentIndex: index,
        onTap: didSelected,
      ),
      body: screens[index],
    );
  }
}
