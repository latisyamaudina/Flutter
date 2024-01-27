import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget {
  const GridBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: Checkbox.width,
      scrollDirection: Axis.horizontal,
      childAspectRatio: (MediaQuery.of(context).size.width) / 
      (MediaQuery.of(context).size.height - kToolbarHeight),
      children: [
        Container(
          color: Colors.red,
          child: Center(
            child: Text(
              "1",
              style: TextStyle(fontSize: 24.0),
              ),
          ),
        ),
        Container(
          color: Colors.yellowAccent,
          child: Center(
            child: Text(
              "1",
              style: TextStyle(fontSize: 24.0),
              ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Text(
              "1",
              style: TextStyle(fontSize: 24.0),
              ),
          ),
        ),
        Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              "1",
              style: TextStyle(fontSize: 24.0),
              ),
          ),
        )
      ],
    );
  }
}