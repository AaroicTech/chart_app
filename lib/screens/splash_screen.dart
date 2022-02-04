import 'dart:ui';

import 'package:chart_app/screens/auth_screen/sign_up.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
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
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
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
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        "Too tired to walk your dog?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
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
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
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
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
            ),
            TextButton(
              onPressed: () {},
              child: RichText(
                text: const TextSpan(
                  text: 'Don\'t have an account?  ',
                  // style: DefaultTextStyle.of(context).style,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
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
