import 'dart:ui';

import 'package:chart_app/screens/auth_screen/sign_up.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  static const routeName = '/onboarding_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [
              Colors.black,
              Colors.black87,
            ],
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                const Image(
                  image: AssetImage(
                    'assets/onboarding_picture.png',
                  ),
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 60, left: 10),
                  child: Row(
                    children: const [
                      Center(
                        child: Image(
                          image: AssetImage(
                            'assets/7d8a156d-f84d-40a9-97ea-c08c2be277cf_200x200 1.png',
                          ),
                          // fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Image(
                          image: AssetImage(
                            'assets/woo_dog.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 500, left: 130),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.41,
                              ),
                            ),
                          ),
                          Divider(
                            height: 40,
                            color: white,
                            indent: 10,
                          ),
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white24,
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.41,
                              ),
                            ),
                          ),
                          Divider(
                            color: white,
                            indent: 10,
                          ),
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white24,
                            child: Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.41,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 1),
                      child: const Center(
                        child: Text(
                          "Too tired to walk your dog?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.0041,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      "Let's help you!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.0041,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 20,
              //  width: 400,
              // padding: EdgeInsets.all(10),
              margin: const EdgeInsets.all(8),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUp.routeName);
                  },
                  child: const Text(
                    'Join our community',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.0041,
                    ),
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: deepOrange,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: RichText(
                text: const TextSpan(
                  text: 'Already a member?  ',
                  // style: DefaultTextStyle.of(context).style,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.41,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.41,
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
