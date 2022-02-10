import 'package:chart_app/screens/Bottom_nav_pages/Chart/chart_screen.dart';
import 'package:chart_app/screens/Bottom_nav_pages/profile_nav.dart';
import 'package:chart_app/screens/Bottom_nav_pages/HomeNav/home_nav.dart';
import 'package:chart_app/screens/Bottom_nav_pages/moment.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pages = [
    HomeNavPage(),
    Moment(),
    ChartScreen(),
    ProfileNavPage()
  ];
  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedPage = value;
          });
          print(value);
        },
        iconSize: 16,
        selectedFontSize: 15,
        currentIndex: _selectedPage,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: black,
        unselectedItemColor: black26,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: const Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: red,
            icon: Icon(
              Icons.group,
            ),
            title: const Text(
              'Moment',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.send,
            ),
            title: const Text(
              'Chat',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: const Text(
              'Profile',
            ),
          ),
        ],
      ),
    );
  }
}
