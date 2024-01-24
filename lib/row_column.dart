import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  const BelajarRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Ini adalah isi row 1"),
        Text("Ini adalah isi row 2"),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Ini isi column 1"),
            Text("Ini isi column 2"),
            Text("Ini isi column 3")
          ],
        )
      ],
    );
  }
}