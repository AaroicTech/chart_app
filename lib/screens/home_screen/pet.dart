import 'package:chart_app/styles/colors.dart';
import 'package:chart_app/styles/font.dart';
import 'package:flutter/material.dart';

class PetScreen extends StatelessWidget {
  const PetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: white,
            automaticallyImplyLeading: false,
            expandedHeight: 2,
            title: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: black,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'We d love your pet',
                    style: textStyle1,
                  ),
                ),
                Text(
                  'Tell us something about your dog',
                  style: textStyle1,
                ),
              ],
            ),
          ),
          // GridView.count(
          //   crossAxisCount: 2,
          //   children: List.generate(6, (index) {
          //     return Center(
          //       child: Container(
          //         height: 150,
          //         width: 180,
          //         decoration: BoxDecoration(
          //           color: grey,
          //           borderRadius: BorderRadius.circular(15),
          //         ),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: const [
          //             Icon(Icons.folder),
          //             Text('Text'),
          //           ],
          //         ),
          //       ),
          //     );
          //   }),
          // ),
        ],
      ),
    );
  }
}
