import 'package:flutter/material.dart';

//container adalah wadah untuk menampung widget lain
class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.red],
            ),
        borderRadius: BorderRadius.circular(10),
      ),
    
      child: Container(
        width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.amber, Colors.amber],
            ),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Container(
        width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.green],
            ),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Container(
        width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: 
          NetworkImage("https://m.media-amazon.com/images/I/41g8yeF0NWL._AC_UF1000,1000_QL80_.jpg"),
          fit: BoxFit.fill),
          gradient: LinearGradient(
            colors: [Colors.green, Colors.green],
            ),
        borderRadius: BorderRadius.circular(10),
      ),
      ),
      ),
      ),
    );
  }
}