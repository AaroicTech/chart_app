import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class DetailData {
  final String id;
  final String title;

  final DateTime date;
  final Image image;

  DetailData(this.image, {
    required this.id,
    required this.title,
    required this.date,
  });
}
