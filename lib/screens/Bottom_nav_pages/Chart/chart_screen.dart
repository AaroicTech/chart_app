import 'package:chart_app/Model/data_model.dart';
import 'package:chart_app/screens/Bottom_nav_pages/Chart/charting_screen.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartScreen extends StatefulWidget {
  ChartScreen({Key? key}) : super(key: key);

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
                  data3.length,
                  (index) {
                    final modelData = data3[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ChartingScreen(
                              id: modelData['id'].toString(),
                              title: modelData['title'].toString(),
                              image: modelData['image'].toString(),
                              message: modelData['message'].toString(),
                            ),
                          ),
                        );
                      },
                      child: Card(
                        child: ListTile(
                          contentPadding: EdgeInsets.all(10),
                          leading: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              modelData['image'].toString(),
                            ),
                          ),
                          title: Text(
                            modelData['title'].toString(),
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
