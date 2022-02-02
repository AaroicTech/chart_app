import 'package:chart_app/screens/home_screen/detail.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/material.dart';

import 'moment.dart';
import 'profile_nav.dart';

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
                  padding: const EdgeInsets.only(left: 12),
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
                        width: 130,
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, ProfilePage.routnamed);
                              },
                              icon: Icon(
                                Icons.add,
                                color: white,
                              ),
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
                    const Padding(padding: EdgeInsets.all(10)),
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
                      elevation: 10,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                10,
                                (index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    child: const Image(
                                      image: AssetImage(
                                        'assets/IMAGE.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Near you',
                                style: textStyle3,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: black,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      foregroundDecoration: BoxDecoration(),
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          10,
                          (index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: const Image(
                                image: AssetImage(
                                  'assets/IMAGE.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
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
          ),
        ),
      ),
    );
  }
}
