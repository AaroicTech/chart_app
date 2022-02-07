import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ChatDetail {
  final String id;
  final String title;
  final Image image;

  ChatDetail(
    this.image, {
    required this.id,
    required this.title,
  });
}
