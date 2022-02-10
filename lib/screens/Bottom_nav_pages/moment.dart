import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/material.dart';

class Moment extends StatefulWidget {
  const Moment({Key? key}) : super(key: key);

  @override
  _MomentState createState() => _MomentState();
}

class _MomentState extends State<Moment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Moment'),
        backgroundColor: deepOrange,
      ),
      body: Center(
        child: Text(
          'Moment',
          style: textStyle5,
        ),
      ),
    );
  }
}
