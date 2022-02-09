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
  final List<Widget> _tabs = [];
  int _selectedTabs = 0;

  @override
  _DetailPage createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Stack(
                children: [
                  Container(
                    height: 450,
                    width: 500,
                    child: Image(
                      image: AssetImage(widget.image!),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    //bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: white30,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
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
                          const SizedBox(
                            width: 190,
                          ),
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
                    margin: const EdgeInsets.only(top: 400),
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
                              // elevation: ,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                padding: const EdgeInsets.all(
                                  10,
                                ),
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
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      "10 km ",
                                      style: TextStyle(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      "4.4 + ",
                                      style: TextStyle(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
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
                                    child:
                                        //_pages[_selectedTabs],
                                        TabBar(
                                      onTap: (value) {
                                        setState(() {
                                          //  _selectedTabs = value;
                                        });
                                        print(value);
                                      },
                                      labelColor: Colors.black,
                                      unselectedLabelColor: Colors.grey,
                                      tabs: [
                                        Tab(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              //color: black,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                12,
                                              ),
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
                                              borderRadius:
                                                  BorderRadius.circular(
                                                12,
                                              ),
                                            ),
                                            height: 40,
                                            width: 80,
                                            child: Center(
                                              child: Text(
                                                'Location',
                                                style:
                                                    TextStyle(color: black26),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Tab(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              // color: black12,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                12,
                                              ),
                                            ),
                                            height: 40,
                                            width: 80,
                                            child: Center(
                                              child: Text(
                                                'Reviews',
                                                style:
                                                    TextStyle(color: black26),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
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
                                    child: TabBarView(
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(20),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    height: 35,
                                                    color: white,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Age',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 10,
                                                            color: black,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          '30 years',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 15,
                                                            color: black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 50,
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.topRight,
                                                    height: 35,
                                                    color: white,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Expirence',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 10,
                                                            color: black,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          '11 months',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 1),
                                              alignment: Alignment.bottomLeft,
                                              child: RichText(
                                                text: const TextSpan(
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text:
                                                          'Alex has loved dogs since childhood.\nHe is',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black26,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ' currently a veterinary student.\nVisits the ',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black26,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          'dog shelter we...\n',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black26,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' Read more',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                // Navigator.pushNamed(context, ChartScreen.routeName);
                                              },
                                              child: Container(
                                                height: 45,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: deepOrange,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    10,
                                                  ),
                                                ),
                                                padding: const EdgeInsets.all(
                                                  15,
                                                ),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    50,
                                                child: Text(
                                                  "Cheeck Schedule",
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
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: const Center(
                                            child: Text(
                                              'Review',
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
        ),
      ),
    );
  }
}
