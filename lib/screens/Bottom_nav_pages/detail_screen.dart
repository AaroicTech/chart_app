import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String id;
  final String title;
  final String image;
  const DetailScreen({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
    );
  }
}
