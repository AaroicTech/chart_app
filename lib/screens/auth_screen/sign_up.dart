import 'package:chart_app/screens/home_screen/home.dart';
import 'package:chart_app/screens/splash_screen.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  static const routeName = '/signup_screen';
  TextEditingController _fullName = TextEditingController();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey();

  bool obscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: black,
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 110),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Lets start here',
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontSize: 33,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Fill in your details to begin',
                        style: TextStyle(
                          color: black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                // Enter your Email
                Form(
                  key: _formKey,
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: black12,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: 60,
                                child: TextFormField(
                                  controller: _fullName,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Full Name',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: black12,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: 60,
                                child: TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'emal ',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 18.0,
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: black12,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 60,
                                        child: TextFormField(
                                          controller: _pwdController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Passward',
                                          ),
                                          obscureText: true,
                                          obscuringCharacter: '.',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18.0,
                        ),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: deepOrange,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Home.routeName);
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 190,
                        ),
                        Column(
                          children: [
                            Center(
                              child: RichText(
                                text: const TextSpan(
                                  text: ' ',
                                  // style: DefaultTextStyle.of(context).style,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' By signing in, i agree with',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),
                                    ),
                                    TextSpan(
                                      text: ' teams of use',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                text: ' ',
                                // style: DefaultTextStyle.of(context).style,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'and',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  TextSpan(
                                    text: ' privacy policy',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
