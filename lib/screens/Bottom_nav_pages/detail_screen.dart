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

  @override
  _DetailPage createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Container(
                height: 500,
                width: 500,
                child: Image(
                  image: AssetImage(widget.image!),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
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
                          fontSize: 18),
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
              Container(
                height: 600,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 340),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text(
                        widget.title!,
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Column(
                        children: [
                          Card(
                            elevation: 1,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                              padding: const EdgeInsets.all(
                                15,
                              ),
                              width: MediaQuery.of(context).size.width - 40,
                              child: Row(
                                children: [
                                  Text(
                                    'S3/hr',
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
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: black,
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                ),
                                height: 40,
                                width: 80,
                                child: const Center(
                                  child: Text(
                                    'About',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 45,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: black12,
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                ),
                                height: 40,
                                width: 80,
                                child: const Center(
                                  child: Text('Location'),
                                ),
                              ),
                              const SizedBox(
                                width: 45,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: black12,
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                ),
                                height: 40,
                                width: 80,
                                child: const Center(
                                  child: Text('Reviews'),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 45,
                                  color: white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Age',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: black,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '30 years',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
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
                                  alignment: Alignment.topRight,
                                  height: 45,
                                  color: white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Expirence',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: black,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '11 months',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
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
                            padding: const EdgeInsets.all(12),
                            alignment: Alignment.bottomLeft,
                            child: RichText(
                              text: const TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        'Alex has loved dogs since childhood.\nHe is',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black26,
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' currently a veterinary student.\nVisits the ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black26,
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'dog shelter we...\n',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black26,
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Read more',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
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
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                              padding: const EdgeInsets.all(
                                15,
                              ),
                              width: MediaQuery.of(context).size.width - 50,
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
