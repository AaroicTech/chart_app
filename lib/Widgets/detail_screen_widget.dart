import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/material.dart';

Widget itemView(
    {VoidCallback? onTap, Map<String, dynamic>? modelData, Color? color}) {
  return GestureDetector(
    
    onTap: onTap,
    child: Container(
      width: 170,
      margin: const EdgeInsets.only(
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Hero(
            tag: modelData!['id'].toString(),
            child: Container(
              height: 120,
              width: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    modelData['image'].toString(),
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    modelData['title'].toString(),
                    style: textStyle5,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: color ?? black,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        modelData['time'].toString(),
                        style: textStyle6,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            "7 km from you",
            style: textStyle2,
          ),
        ],
      ),
    ),
  );
}
