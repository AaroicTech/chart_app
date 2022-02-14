import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PetScreen extends StatefulWidget {
  @override
  _PetScreen createState() => _PetScreen();
}

class _PetScreen extends State<PetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Container(
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 1),
                child: Container(
                  child: Text(
                    'We d love your pet',
                    style: textStyle3,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 1),
                child: Container(
                  child: Text(
                    'Tell us something about your dog',
                    style: textStyle2,
                  ),
                ),
              ),
              DefaultTabController(
                length: 10, // length of tabs
                initialIndex: 1,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TabBar(
                        onTap: (value) {
                          print(value);
                        },
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            child: Container(
                              height: 20,
                              width: 40,
                              // color: red,
                              child: Text(
                                '1',
                                style: TextStyle(color: grey),
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '2',
                              style: TextStyle(color: grey),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '3',
                              style: TextStyle(color: grey),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '4',
                              style: TextStyle(color: grey),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '5',
                              style: TextStyle(color: grey),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '6',
                              style: TextStyle(color: grey),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '7',
                              style: TextStyle(color: grey),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '8',
                              style: TextStyle(color: grey),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '9',
                              style: TextStyle(color: grey),
                            ),
                          ),
                          Tab(
                            child: Text(
                              '10',
                              style: TextStyle(color: grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500, //height of TabBarView
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: const TabBarView(
                        children: <Widget>[
                          Icon(Icons.directions_car),
                          Text('data'),
                          Icon(Icons.directions_transit),
                          Text('data'),
                          Icon(Icons.directions_bike),
                          Text('data'),
                          Icon(Icons.directions_car),
                          Text('data'),
                          Icon(Icons.directions_transit),
                          Text('data'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
