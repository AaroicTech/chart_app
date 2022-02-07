import 'package:chart_app/screens/Bottom_nav_pages/Chart/chart_screen.dart';
import 'package:chart_app/screens/Bottom_nav_pages/profile_nav.dart';
import 'package:chart_app/screens/Bottom_nav_pages/home_nav.dart';
import 'package:chart_app/screens/Bottom_nav_pages/moment.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = 'Home_screen';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pages = [
    HomeNavPage(
      // id: DateTime.now().toString(),
      // title: 'Detail',
      // image: Image(
      //   image: AssetImage(
      //     'assets/Frame 33553.png',
      //   ),
      // ),
    ),
    Profile(),
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
        iconSize: 25,
        selectedFontSize: 15,
        unselectedFontSize: 25,
        selectedLabelStyle: textStyle1,
        unselectedLabelStyle: textStyle2,
        selectedItemColor: black,
        unselectedItemColor: black26,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: black,
              size: 25,
            ),
            title: const Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: red,
            icon: Icon(
              Icons.group,
              color: black26,
              size: 25,
            ),
            title: const Text(
              'Moment',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.send,
              color: black26,
              size: 25,
            ),
            title: const Text(
              'Chat',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: black26,
              size: 25,
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
