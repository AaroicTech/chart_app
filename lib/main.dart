import 'package:chart_app/screens/Bottom_nav_pages/Chart/chart_screen.dart';
import 'package:chart_app/screens/Bottom_nav_pages/Chart/charting_screen.dart';
import 'package:chart_app/screens/Bottom_nav_pages/detail_screen.dart';
import 'package:chart_app/screens/Bottom_nav_pages/home_nav.dart';
import 'package:chart_app/screens/auth_screen/sign_up.dart';
import 'package:chart_app/screens/home_screen/home.dart';
import 'package:chart_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const OnboardingScreen(),
      // routes: {
      //   SignUp.routeName: (context) => SignUp(),
      //   Home.routeName: (context) => const Home(),
      //   ChartScreen.routeName: (context) => ChartScreen(),
      //   ChartingScreen.routnamed: (context) => ChartingScreen(),
      //   DetailScreen.routeNamed: (ctx) => DetailScreen(),
      //   HomeNavPage.routeNamed: (ctx) => HomeNavPage(),
      // },
    );
  }
}
