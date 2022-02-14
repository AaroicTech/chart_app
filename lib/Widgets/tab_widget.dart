import 'package:chart_app/styles/colors.dart';
import 'package:flutter/material.dart';

Widget tab({
  VoidCallback? ontap,
}) {
  return TabBar(
    onTap: (value) {
     
      print(value);
    },
    labelColor: Colors.black,
    unselectedLabelColor: Colors.grey,
    tabs: [
      Tab(
        child: Container(
          decoration: BoxDecoration(
            //color: black,
            borderRadius: BorderRadius.circular(12),
          ),
          height: 40,
          width: 80,
          child: Center(
            child: Text(
              'About',
              style: TextStyle(color: white),
            ),
          ),
        ),
      ),
      Tab(
        child: Container(
          decoration: BoxDecoration(
            //color: black12,
            borderRadius: BorderRadius.circular(12),
          ),
          height: 40,
          width: 80,
          child: Center(
            child: Text(
              'Location',
              style: TextStyle(color: black26),
            ),
          ),
        ),
      ),
      Tab(
        child: Container(
          decoration: BoxDecoration(
            // color: black12,
            borderRadius: BorderRadius.circular(12),
          ),
          height: 40,
          width: 80,
          child: Center(
            child: Text(
              'Reviews',
              style: TextStyle(color: black26),
            ),
          ),
        ),
      ),
    ],
  );
}
