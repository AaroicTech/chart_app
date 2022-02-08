import 'package:chart_app/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartingScreen extends StatefulWidget {
  String? id;
  String? title;
  String? image;
  String? message;
  // DateTime? time,

  ChartingScreen({
    required this.id,
    required this.title,
    required this.image,
    required this.message,
    // required this.
  });

  @override
  _ChartingScreenState createState() => _ChartingScreenState();
}

class _ChartingScreenState extends State<ChartingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        margin: const EdgeInsets.only(top: 30),
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                // SliverAppBar(
                //   title: Text("Chat"),
                //   expandedHeight: 50,
                //   flexibleSpace: Container(
                //     margin: const EdgeInsets.only(top: 50),
                //     child: CircleAvatar(),
                //   ),
                // ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.all(10),
                        leading: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: black,
                            size: 24,
                          ),
                        ),
                        title: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(widget.image!),
                              radius: 25,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              widget.title!,
                              style: TextStyle(
                                color: black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.call,
                            color: black,
                          ),
                        ),
                      ),
                      const Text('1 hr ago'),
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
                          height: 75,
                          width: 200,
                          decoration: BoxDecoration(
                            color: deepOrange,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
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
                        height: 15,
                      ),
                      const Text('1 hr ago'),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          child: Center(
                            child: Text(widget.message!),
                          ),
                          alignment: Alignment.bottomLeft,
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            color: deepOrange,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
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
            )
          ],
        ),
      ),
    );
  }
}
