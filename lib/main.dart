import 'package:chart_app/screens/Bottom_nav_pages/Chart/chart_screen.dart';
import 'package:chart_app/screens/Bottom_nav_pages/Chart/charting_screen.dart';
import 'package:chart_app/screens/Bottom_nav_pages/detail_screen.dart';
import 'package:chart_app/screens/auth_screen/sign_up.dart';
import 'package:chart_app/screens/home_screen/home.dart';
import 'package:chart_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/Bottom_nav_pages/profile_nav.dart';
import 'screens/home_screen/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
      routes: {
        SignUp.routeName: (context) => SignUp(),
        Home.routeName: (context) => Home(),
        ChartScreen.routeName: (context) => ChartScreen(),
        ChartingScreen.routnamed: (context) => ChartingScreen(),
        DetailPage.routnamed: (context) => DetailPage(),
       '/navigator': (ctx) => DetailScreen(id: 'id', title: 'title', image: 'image')
      },
    );
  }
}
