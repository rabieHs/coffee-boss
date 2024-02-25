import 'package:coffee_boss/Features/coffee_server/views/coffee_screen.dart';
import 'package:coffee_boss/Features/coffee_server/views/server_home.dart';
import 'package:coffee_boss/Features/coffee_server/views/widgets/server_settings_screen.dart';
import 'package:coffee_boss/core/common/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;
  didSelected(int _index) {
    setState(() {
      index = _index;
    });
  }

  List<Widget> screens = [ServerHome(), CoffeeScreen(), ServerSettingsScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.coffee), label: "Coffee"),
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
