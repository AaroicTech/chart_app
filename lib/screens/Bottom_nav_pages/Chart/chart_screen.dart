import 'package:chart_app/screens/Bottom_nav_pages/Chart/charting_screen.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartScreen extends StatefulWidget {
  ChartScreen({Key? key}) : super(key: key);

  static const routeName = 'Chart_screen';

  final TextEditingController _search = TextEditingController();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 310),
              child: Text(
                'Chat',
                style: textStyle7,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'search...',
                    prefixIcon: Icon(
                      Icons.search,
                      color: grey,
                    ),
                    suffixIcon: Icon(
                      Icons.group,
                      color: grey,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: List.generate(
                  20,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, ChartingScreen.routnamed);
                      },
                      child: Card(
                        child: ListTile(
                          leading: const CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/IMAGE.png'),
                          ),
                          title: Text(
                            'Will Knowles ',
                            style: textStyle3,
                          ),
                          subtitle: Text(
                            'Hi! how\s your dog - 1min',
                            style: textStyle2,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
