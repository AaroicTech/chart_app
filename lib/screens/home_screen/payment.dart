import 'package:chart_app/Widgets/edit_profile.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                    fontSize: 24,
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
                child: const Text(
                  'Just before your dog walk starts',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
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
                        color: purple, borderRadius: BorderRadius.circular(20)),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 180,
                    width: 50,
                    decoration: BoxDecoration(
                        color: purple, borderRadius: BorderRadius.circular(18)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
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
                        leading: Icon(Icons.approval),
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
