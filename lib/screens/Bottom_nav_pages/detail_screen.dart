import 'package:chart_app/Model/detail_data.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  // final String id;
  // final String title;
  // final String image;
  // const DetailScreen({
  //   Key? key,
  //   required this.id,
  //   required this.title,
  //   required this.image,
  // }) : super(key: key);
   static const routeNamed = 'DetailScreen';

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final ChatDetailTitle = routeArgs['title'];
    final ChatDetailId = routeArgs['id'];


    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
    );
  }
}
