import 'package:chart_app/styles/font.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Center(
              child: Text(
                'These are the list of your current\nand previours search',
                style: textStyle3,
              ),
            ),
          )
        ],
      );
    }

    return ListView(
      children: List.generate(
        20,
        (index) => Center(
          child: Text(
            ' current and previours search',
            style: textStyle3,
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView(
      children: List.generate(
        40,
        (index) => Center(
          child: Text(
            'Flutter',
            style: textStyle3,
          ),
        ),
      ),
    );
  }
}
