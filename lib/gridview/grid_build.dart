import 'package:flutter/material.dart';

class BelajarGridBuild extends StatelessWidget {
   BelajarGridBuild({super.key});

  var data = 1;
  var color = 0;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: 9,
      itemBuilder: (context, index) {
        return Container(
          child: Card(
            color: Colors.purple[color += 100],
            child: Center(
              child: Text(
                "${data++}",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}