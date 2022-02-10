import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  String? id;
  String? title;
  String? image;
  EditProfile(
      {Key? key, required this.id, required this.title, required this.image})
      : super(key: key);

  @override
  _EditProfile createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  TextEditingController _surname = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _phone = TextEditingController();
  TextEditingController _firstname = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey();

  bool obscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Edite Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.41,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              // margin: const EdgeInsets.only(
              //   top: 100,
              // ),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: black12,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          //height: 60,
                          child: TextFormField(
                            controller: _firstname,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              // hintText: 'Full Name',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: black12,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          // height: 60,
                          child: TextFormField(
                            controller: _surname,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              // hintText: 'Full Name',
                            ),
                          ),
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
    );
  }
}
