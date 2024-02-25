import 'package:coffee_boss/Features/coffee_owner/presentation/views/owner_homeview.dart';
import 'package:coffee_boss/Features/coffee_server/views/home_view.dart';
import 'package:coffee_boss/Features/coffee_server/views/server_home.dart';
import 'package:coffee_boss/core/common/const.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CofeeBoss',
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
      home: OwnerHomeView(),
    );
  }
}
