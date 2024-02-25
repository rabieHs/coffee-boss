import 'package:coffee_boss/core/common/material_color_generator.dart';
import 'package:flutter/material.dart';

const Color primaryScaffoldBackround = Color.fromRGBO(210, 174, 130, 1);
const Color blueScaffoldBackround = Color.fromRGBO(210, 174, 130, 0);
const Color buttonGradient1 = Color.fromRGBO(203, 138, 88, 1);
const Color buttonGradient2 = Color.fromRGBO(86, 43, 26, 1);

const Color primary = Color.fromRGBO(198, 124, 78, 1);

MaterialColor primaryColor = MaterialColorGenerator.from(primary);

const String testImage =
    "https://images.unsplash.com/photo-1527980965255-d3b416303d12?q=80&w=2960&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

const String testCoffeeImage =
    "https://images.unsplash.com/photo-1512568400610-62da28bc8a13?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

double height(BuildContext context) => MediaQuery.of(context).size.height;
double widht(BuildContext context) => MediaQuery.of(context).size.width;
