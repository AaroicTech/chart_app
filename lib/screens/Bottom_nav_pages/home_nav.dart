import 'package:chart_app/Model/data_model.dart';
import 'package:chart_app/screens/home_screen/search.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeNavPage extends StatefulWidget {
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
                        style: textStyle7,
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailPage(
                                id: 'id',
                                title: 'title',
                                image: 'image',
                              ),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 45,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text(
                                'Burk a walk',
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
                            fontSize: 17,
                            color: grey,
                            fontWeight: FontWeight.w500,
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
                            readOnly: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Cyv Ubaclre',
                              prefixIcon: IconButton(
                                onPressed: () {
                                 showSearch(
                          context: context,
                          delegate: CustomSearchDelegate(),
                        );
                                },
                                icon: const Icon(Icons.search),
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
                      width: 218,
                    ),
                    Text(
                      'View off',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                        color: black26,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 1,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 220,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                data1.length,
                                (index) {
                                  final modelData = data1[index];
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => DetailPage(
                                            title:
                                                modelData['title'].toString(),
                                            id: modelData['id'].toString(),
                                            image:
                                                modelData['image'].toString(),
                                          ),
                                        ),
                                      );
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
                                              right: 20,
                                            ),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  modelData['image'].toString(),
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          const SizedBox(
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
                                                  modelData['title'].toString(),
                                                  style: textStyle5,
                                                ),
                                                const SizedBox(
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
                                                      modelData['time']
                                                          .toString(),
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
                        const Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        Text(
                          'Suggested',
                          style: textStyle3,
                        ),
                        const SizedBox(
                          width: 200,
                        ),
                        Text(
                          'View off',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                            color: black26,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Card(
                      elevation: 1,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 220,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: List.generate(
                                data2.length,
                                (index) {
                                  final modelData = data2[index];
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => DetailPage(
                                            title:
                                                modelData['title'].toString(),
                                            id: modelData['id'].toString(),
                                            image:
                                                modelData['image'].toString(),
                                          ),
                                        ),
                                      );
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
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  modelData['image'].toString(),
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          const SizedBox(
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
                                                  modelData['title'].toString(),
                                                  style: textStyle5,
                                                ),
                                                const SizedBox(
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
                                                      modelData['time']
                                                          .toString(),
                                                      style: textStyle6,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "${modelData['distance']} from you",
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
