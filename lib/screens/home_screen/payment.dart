import 'package:chart_app/Widgets/edit_profile.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'pet.dart';

class Payment_screen extends StatefulWidget {
  @override
  _Payment_screen createState() => _Payment_screen();
}

class _Payment_screen extends State<Payment_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                child: const Text(
                  'Payment',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.41,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                child: Text(
                  'Just before your dog walk starts',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    letterSpacing: -0.41,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    height: 180,
                    width: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [deepPurple, pink],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Cristion Downey',
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 120),
                                Icon(Icons.add),
                              ],
                            ),
                            const SizedBox(width: 20),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'S3,265,23',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(height: 60),
                            Row(
                              children: [
                                Text(
                                  '5282 3456 7890 1289',
                                  style: TextStyle(color: white, fontSize: 15),
                                ),
                                const SizedBox(width: 70),
                                Text(
                                  '09/25',
                                  style: TextStyle(color: white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 180,
                    width: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [pink, white],
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Icon(
                      Icons.add,
                      color: pink,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                //color: black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                child: ListView(
                  children: [
                    Card(
                      child: ListTile(
                        title: Text(
                          'Total Speed',
                          style: textStyle1,
                        ),
                        trailing: Text(
                          'S488',
                          style: textStyle1,
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.pets),
                        title: Text('Groceries'),
                        trailing: Text(
                          '-S12',
                          style: TextStyle(color: red),
                        ),
                      ),
                    ),
                    //SizedBox(height: 20),
                    Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.gamepad,
                          color: red,
                        ),
                        title: Text('Gaming Console'),
                        trailing: Text(
                          '+S12',
                          style: TextStyle(color: black),
                        ),
                      ),
                    ),

                    Card(
                      child: ListTile(
                        leading: Icon(Icons.switch_camera),
                        title: Text('Scameer'),
                        trailing: Text(
                          '+S12',
                          style: TextStyle(color: black),
                        ),
                      ),
                    ),

                    Card(
                      child: ListTile(
                        leading: Icon(Icons.wallet_giftcard),
                        title: Text('Groceries'),
                        trailing: Text(
                          '-S12',
                          style: TextStyle(color: red),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        // color: black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.pop(context);
                            },
                            child: Container(
                              height: 60,
                              width: 180,
                              decoration: BoxDecoration(
                                color: grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Cancel',
                                  style: textStyle11,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => PetScreen(),
                                ),
                              );
                            },
                            child: Container(
                              height: 60,
                              width: 180,
                              decoration: BoxDecoration(
                                color: deepOrange,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Pay',
                                  style: textStyle11,
                                ),
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
          ],
        ),
      ),
    );
  }
}
