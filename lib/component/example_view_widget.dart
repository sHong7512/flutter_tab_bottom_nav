import 'package:flutter/material.dart';
import 'package:tab_bottom_nav/data/example_data.dart';

import '../screen/detail_screen.dart';

class ExampleViewWidget extends StatelessWidget {
  final ExampleItem exampleItem;

  const ExampleViewWidget(this.exampleItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => DetailScreen(content: exampleItem.content)));
      },
      child: Container(
        color: exampleItem.color,
        alignment: Alignment.center,
        child: Container(
          color: Colors.white70,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              exampleItem.content,
              style: const TextStyle(
                fontSize: 25,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
