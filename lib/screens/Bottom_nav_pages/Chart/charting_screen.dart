import 'package:chart_app/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartingScreen extends StatefulWidget {
  const ChartingScreen({Key? key}) : super(key: key);
  static const routnamed = 'Charting_screen';

  @override
  _ChartingScreenState createState() => _ChartingScreenState();
}

class _ChartingScreenState extends State<ChartingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: black,
                      size: 24,
                    ),
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/IMAGE.png",
                    ),
                    radius: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Ajes Mumey',
                    style: TextStyle(
                      color: black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.call,
                      color: black,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 60),
                      child: const Text('1 hr ago 12:04'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          color: deepOrange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                          color: black12,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: const Text('10:30'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                          color: deepOrange,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 220,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: black12,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Aa',
                          border: InputBorder.none,
                        ),
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
