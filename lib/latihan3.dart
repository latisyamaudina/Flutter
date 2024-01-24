import 'package:flutter/material.dart';
class Latihan3 extends StatelessWidget {
  const Latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
      height: 150,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
      image: DecorationImage(
      image: 
      NetworkImage("https://images.tokopedia.net/blog-tokopedia-com/uploads/2021/01/Megaonemega.jpg"),
      fit: BoxFit.cover),
      ),
          ),
          Container(
            width: double.infinity,
            height: 185,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
           color: Colors.pink,
        ),
        child: Row(
          children: [
            Container(
              width: 200,
              height: 150,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
              image: DecorationImage(
              image: 
              NetworkImage("https://akcdn.detik.net.id/visual/2020/11/16/latar-belakang-keluarga-4-member-blackpink_11.jpeg?w=480&q=90"),
              fit: BoxFit.fill),
              gradient: LinearGradient(
              colors: [Colors.black, Colors.pink],
        ),
              ),
      ),
      Container (
        width: 200,
        height: 100,
        child: Text("Blackpink adalah grup vokal wanita asal Korea Selatan. Blackpink dibentuk oleh YG Entertainment dengan beranggotakan empat orang, diantaranya Jennie, Jisoo, Lisa, dan Rosé", 
        textAlign: TextAlign.right, style: TextStyle(color: Colors.black, fontSize: 10),),
      ),
          ],
        ),
          ),
          Text(
            "Galeri"
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: 
                  NetworkImage("https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/hops/2020/08/54732062_987807854743111_8910087446601014125_n.jpg"),
                  fit: BoxFit.fill),
                ),
              ),
              Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: 
                  NetworkImage("https://img.inews.co.id/media/600/files/inews_new/2021/10/27/fakta_unik_member_blackpink.jpeg"),
                  fit: BoxFit.fill),
                ),
              ),
              Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: 
                  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbzWUSJzMfTeWpiDRgXqbRe3b0L7Dnt1Ogug&usqp=CAU"),
                  fit: BoxFit.fill),
                ),
              ),
          ],
          )
        ],
      ),
    );
  }
}