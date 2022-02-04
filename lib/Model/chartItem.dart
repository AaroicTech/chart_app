import 'package:flutter/foundation.dart';

class ChartItem {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  ChartItem({
  required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });
}
