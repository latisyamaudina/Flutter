import 'package:flutter/material.dart';

import '../helpers/size_helper.dart';

class DetailNatureScreeen extends StatelessWidget {
  final String nama;
  final String letak;
  final String image;
  final String desc;
  
  DetailNatureScreeen(
    {required this.nama,
    required this.letak,
    required this.image,
    required this.desc,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Nature Detail"),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image
            ))
         ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  "$nama - $letak",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  height: displayHeight(context) * 0.25,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                      )
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: displayWidth(context) * 0.95,
                        height: 360,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              const Color.fromARGB(255, 103, 176, 235),
                              const Color.fromARGB(255, 129, 195, 250)
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft
                            ),
                            borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "$desc",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white,
                          fontFamily: 'DancingScript',
                          fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
        )
      );
  }
}