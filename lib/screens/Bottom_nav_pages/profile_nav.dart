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
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.41,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    // backgroundImage: AssetImage(widget.image!),
                    radius: 50,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => EditProfile(
                      id: 'id',
                      title: 'title',
                      image: 'image',
                    ),
                  ),
                );
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    //color: black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 60,
                    child: Text(
                      'Name',
                      style: textStyle2,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        EditProfile(id: 'id', title: 'title', image: 'image'),
                  ),
                );
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    //color: black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 60,
                    child: Text(
                      'Phone',
                      style: textStyle2,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => EditProfile(
                      id: 'id',
                      title: 'title',
                      image: 'image',
                    ),
                  ),
                );
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    //color: black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 60,
                    child: Text(
                      'Email',
                      style: textStyle2,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => EditProfile(
                      id: 'id',
                      title: 'title',
                      image: 'image',
                    ),
                  ),
                );
              },
              child: Text(
                'Tell us about your self',
                style: textStyle1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                //color: black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 60,
                child: Text(
                  'My name is Aaron James Matthew am a mobil app developer,i currently work at Meghee Plc, Port Harcurt, Nigeria',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
