import 'package:chart_app/screens/home_screen/detail.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/material.dart';

class HomeNavPage extends StatefulWidget {
  const HomeNavPage({Key? key}) : super(key: key);

  @override
  _HomeNavPageState createState() => _HomeNavPageState();
}

class _HomeNavPageState extends State<HomeNavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.only(top: 50),
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 35,
                          color: black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      Container(
                        height: 45,
                        // width: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Burk a walk',
                              style: TextStyle(
                                fontSize: 15,
                                color: white,
                                fontWeight: FontWeight.bold,
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
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Explore dog walkers',
                          style: TextStyle(
                            fontSize: 20,
                            color: grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Cyv Ubaclre',
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Text(
                      'Near you',
                      style: textStyle3,
                    ),
                    const SizedBox(
                      width: 155,
                    ),
                    Text(
                      'View off',
                      style: textStyle4,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 3,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 220,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                10,
                                (index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, DetailPage.routnamed);
                                    },
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 120,
                                            width: 170,
                                            margin: const EdgeInsets.only(
                                                right: 20),
                                            decoration: BoxDecoration(
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                  'assets/Frame 33553.png',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Mason York",
                                                  style: textStyle5,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    color: black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      10,
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'S3/h',
                                                      style: textStyle6,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "7 km from you",
                                            style: textStyle2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.all(10)),
                        Text(
                          'Suggested',
                          style: textStyle3,
                        ),
                        const SizedBox(
                          width: 155,
                        ),
                        Text(
                          'View off',
                          style: textStyle4,
                        ),
                      ],
                    ),
                    Card(
                      elevation: 3,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 220,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                10,
                                (index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, DetailPage.routnamed);
                                    },
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 120,
                                            width: 170,
                                            margin: const EdgeInsets.only(
                                                right: 20),
                                            decoration: BoxDecoration(
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                  'assets/Frame 33546.png',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Mason York",
                                                  style: textStyle5,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    color: black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      10,
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'S3/h',
                                                      style: textStyle6,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "2 km from you",
                                            style: textStyle2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
