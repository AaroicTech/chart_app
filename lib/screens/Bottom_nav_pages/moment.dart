import 'package:chart_app/Model/data_model.dart';
import 'package:chart_app/Widgets/detail_screen_widget.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/material.dart';
import 'detail_screen.dart';

class MomentPage extends StatefulWidget {
  @override
  _MomentPageState createState() => _MomentPageState();
}

class _MomentPageState extends State<MomentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.only(top: 40),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                child: Column(children: [
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.all(5)),
                      Container(
                        child: const Image(
                          image: AssetImage(
                            'assets/7d8a156d-f84d-40a9-97ea-c08c2be277cf_200x200 1.png',
                          ),
                        ),
                      ),
                      Container(
                        child: const Image(
                          image: AssetImage('assets/woo_dog.png'),
                        ),
                      ),
                      const SizedBox(width: 130),
                      Container(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 45,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Book a walk',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: white,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.41,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: deepOrange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        10,
                        (index) => const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            'assets/7d8a156d-f84d-40a9-97ea-c08c2be277cf_200x200 1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text(
                      'Recently added',
                      style: textStyle3,
                    ),
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 300,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                data1.length,
                                (index) {
                                  final modelData = data1[index];
                                  return Container(
                                    width: 170,
                                    margin: const EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        Hero(
                                          tag: modelData['id'].toString(),
                                          child: Stack(
                                            children: [
                                              Container(
                                                height: 270,
                                                width: 170,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      modelData['image']
                                                          .toString(),
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              Positioned(
                                                top: 8,
                                                right: 10,
                                                left: 0,
                                                child: Center(
                                                  child: Container(
                                                    height: 20,
                                                    width: 145,
                                                    decoration: BoxDecoration(
                                                      color: transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Container(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: const Icon(
                                                        Icons.more_horiz,
                                                        color: Colors.white,
                                                        size: 25,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 240,
                                                // right: 60,
                                                left: 0,
                                                child: Center(
                                                  child: Container(
                                                    height: 20,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                      color: grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Icon(
                                                          Icons.favorite,
                                                          color: Colors.white,
                                                          size: 10,
                                                        ),
                                                        Text('3.4k'),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 8,
                                                right: 10,
                                                left: 0,
                                                child: Center(
                                                  child: Container(
                                                    height: 20,
                                                    width: 145,
                                                    decoration: BoxDecoration(
                                                      color: transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Container(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: const Icon(
                                                        Icons.more_horiz,
                                                        color: Colors.white,
                                                        size: 25,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 20),
                                              Positioned(
                                                top: 240,
                                                right: 0,
                                                left: 10,
                                                child: Center(
                                                  child: Container(
                                                    height: 20,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color: grey,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Icon(
                                                          Icons.circle,
                                                          color: Colors.white,
                                                          size: 10,
                                                        ),
                                                        Text('70'),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 300,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: List.generate(
                                    data1.length,
                                    (index) {
                                      final modelData = data1[index];
                                      return Container(
                                        width: 170,
                                        margin:
                                            const EdgeInsets.only(right: 20),
                                        child: Column(
                                          children: [
                                            Hero(
                                              tag: modelData['id'].toString(),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    height: 270,
                                                    width: 170,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          modelData['image']
                                                              .toString(),
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    left: 0,
                                                    child: Center(
                                                      child: Container(
                                                        height: 20,
                                                        width: 145,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                        ),
                                                        child:
                                                            const Text('asda'),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 240,
                                                    right: 50,
                                                    left: 0,
                                                    child: Center(
                                                      child: Container(
                                                        height: 20,
                                                        width: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: grey,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text('asda'),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text('asda'),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
