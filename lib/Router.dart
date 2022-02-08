import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Router {
  BuildContext context;
  Router(this.context);
  void nextPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }
}
