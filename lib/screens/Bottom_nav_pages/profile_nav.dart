import 'package:chart_app/Widgets/edit_profile.dart';
import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileNavPage extends StatefulWidget {
  String? id;
  String? title;
  String? image;
  ProfileNavPage({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  _ProfileNavPage createState() => _ProfileNavPage();
}

class _ProfileNavPage extends State<ProfileNavPage> {
  GlobalKey<FormState> _formKey = GlobalKey();

  bool obscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        //margin: const EdgeInsets.only(top: 1),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    //color: black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        color: black,
                        size: 20,
                      ),
                      const SizedBox(width: 310),
                      Icon(
                        Icons.notifications,
                        color: black,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/woo_dog.png'),
                  radius: 60,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Aaron James Matthew',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.41,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.verified_rounded,
                      size: 15,
                      color: grey,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'sdasdafsdasds',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
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
                        leading: Icon(Icons.gpp_good),
                        title: Text('My pets'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.favorite,
                          color: red,
                        ),
                        title: Text('My favourites'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.border_all),
                        title: Text('My bodyes'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.wallet_giftcard),
                        title: Text('My wallet'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'View all',
                            style: TextStyle(
                              color: white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                            color: white,
                            size: 20,
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
