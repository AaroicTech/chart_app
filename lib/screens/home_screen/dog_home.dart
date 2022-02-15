import 'package:chart_app/Model/data_model.dart';
import 'package:chart_app/Widgets/detail_screen_widget.dart';
import 'package:chart_app/screens/Bottom_nav_pages/detail_screen.dart';
import 'package:chart_app/screens/home_screen/search.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/material.dart';

import 'walk_plane.dart';

class DogHome extends StatefulWidget {
  @override
  _DogHomeState createState() => _DogHomeState();
}

class _DogHomeState extends State<DogHome> {
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
                              builder: (_) => DatePicker(),
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
                            onTap: () {
                              showSearch(
                                context: context,
                                delegate: CustomSearchDelegate(),
                              );
                            },
                            readOnly: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Your Location',
                              hintStyle: textStyle2,
                              prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit_location,
                                  color: black26,
                                ),
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
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  width: 360,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: deepOrange,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            //alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 75),
                                  child: Text(
                                    'Suprise For You',
                                    style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'The first walk is free!',
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 90),
                        Image(
                          image: AssetImage(
                            'assets/woo_dog.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Text(
                      'Top walkers',
                      style: textStyle3,
                    ),
                    const SizedBox(
                      width: 195,
                    ),
                    Text(
                      'View all',
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
                                  return itemView(
                                      modelData: modelData,
                                      // color: red,
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
                                      });
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
                          'View all',
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
                                  return itemView(
                                      modelData: modelData,
                                      // color: green,
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
                                      });
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
