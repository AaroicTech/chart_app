import 'package:chart_app/styles/colors.dart';
import 'package:flutter/material.dart';

Widget tabView({String? tex}) {
  return TabBarView(
    children: <Widget>[
      Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: 35,
                  color: white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: black,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '30 years',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 50),
                Container(
                  alignment: Alignment.topRight,
                  height: 35,
                  color: white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expirence',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: black,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '11 months',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.bottomLeft,
            child: RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Alex has loved dogs since childhood.\nHe is',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black26,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: ' currently a veterinary student.\nVisits the ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black26,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: 'dog shelter we...\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black26,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: ' Read more',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: deepOrange,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              padding: const EdgeInsets.all(15),
              child: Text(
                "Check Schedule",
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
          )
        ],
      ),
      Container(
        child: const Center(
          child: Text(
            'Location',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Container(
        child: const Center(
          child: Text(
            'Review',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}
