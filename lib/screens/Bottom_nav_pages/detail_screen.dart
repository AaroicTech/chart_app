import 'package:chart_app/Widgets/tab_veiw.dart';
import 'package:chart_app/Widgets/tab_widget.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  String? id;
  String? title;
  String? image;

  DetailPage({
    required this.id,
    required this.title,
    required this.image,
  });
  final List<Widget> _tabs = [
    Text(
      'About',
      style: TextStyle(color: white),
    ),
    Text(
      'Location',
      style: TextStyle(color: white),
    ),
    Text(
      'Review',
      style: TextStyle(color: white),
    ),
  ];
  int _selectedTabs = 0;

  @override
  _DetailPage createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                child: Stack(
                  children: [
                    Hero(
                      tag: widget.id!,
                      child: Container(
                        height: 450,
                        width: 500,
                        child: Image(
                          image: AssetImage(widget.image!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 0,
                      left: 0,
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: white30,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 40,
                        width: 400,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.star,
                                color: white,
                              ),
                            ),
                            const SizedBox(width: 190),
                            Text(
                              'Verified',
                              style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.verified,
                                color: white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: white,
                      ),
                      margin: const EdgeInsets.only(top: 350),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          const SizedBox(height: 20.0),
                          Text(
                            widget.title!,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22, color: black),
                          ),
                          const SizedBox(height: 20.0),
                          Column(
                            children: [
                              Card(
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  width: MediaQuery.of(context).size.width - 40,
                                  child: Row(
                                    children: [
                                      Text(
                                        "5&/hr ",
                                        style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                      const SizedBox(width: 40),
                                      Text(
                                        "10 km ",
                                        style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                      const SizedBox(width: 40),
                                      Text(
                                        "4.4 + ",
                                        style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                      const SizedBox(width: 40),
                                      Text(
                                        "450 walks ",
                                        style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              DefaultTabController(
                                length: 3, // length of tabs
                                initialIndex: 0,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: tab(
                                          //   ontap: (value) {
                                          //   setState(() {
                                          //     _selectedTabs = value;
                                          //   });
                                          // }
                                          ),
                                    ),
                                    Container(
                                      height: 400, //height of TabBarView
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          top: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      child: tabView(),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
