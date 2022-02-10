import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileNavPage extends StatefulWidget {
  const ProfileNavPage({Key? key}) : super(key: key);

  @override
  _ProfileNavPage createState() => _ProfileNavPage();
}

class _ProfileNavPage extends State<ProfileNavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Profile'),
        backgroundColor: deepOrange,
      ),
      body: Center(
        child: Text(
          'Profile',
          style: textStyle5,
        ),
      ),
    );
  }
}
