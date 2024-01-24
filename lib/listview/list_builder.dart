import 'package:flutter/material.dart';

class BelajarListBuilder extends StatelessWidget {
   BelajarListBuilder({super.key});

  final  List<Color> colorList = [Colors.red, Colors.yellow, Colors.green];
  final List<String> stringList = ["PDIP", "GOLKAR", "PKB"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: 200,
            color: colorList[index],
            child: Center(
              child: Text(stringList[index]),
            )
          );
        },
      ),
    );
  }
}