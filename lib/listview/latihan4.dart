import 'package:flutter/material.dart';

class ListItem {
  final String image;
  final String artikel;
  final String text;
  final String galery;

  ListItem(
    this.image,
    this.artikel, 
    this.text, 
    this.galery, 
   );
}

class Latihan4 extends StatelessWidget {
  Latihan4({super.key});

  final List<ListItem> itemList = [
    ListItem(
        "https://akcdn.detik.net.id/visual/2020/11/16/latar-belakang-keluarga-4-member-blackpink_11.jpeg?w=480&q=90",
        "Blackpink adalah grup vokal wanita asal Korea Selatan.",
        "Marvel",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbzWUSJzMfTeWpiDRgXqbRe3b0L7Dnt1Ogug&usqp=CAU",),
    ListItem(
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/hops/2020/08/54732062_987807854743111_8910087446601014125_n.jpg",
        "Blackpink dibentuk oleh YG Entertainment ",
        "Marvel",
        "https://img.inews.co.id/media/600/files/inews_new/2021/10/27/fakta_unik_member_blackpink.jpeg",),
    ListItem(
        "https://img.inews.co.id/media/600/files/inews_new/2021/10/27/fakta_unik_member_blackpink.jpeg",
        "Blackpink beranggotakan empat orang",
        "Marvel",
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/hops/2020/08/54732062_987807854743111_8910087446601014125_n.jpg",),
    ListItem(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbzWUSJzMfTeWpiDRgXqbRe3b0L7Dnt1Ogug&usqp=CAU",
        "Anggota Blackpink adalah Jennie, Jisoo, Lisa, dan Rosé",
        "Marvel",
        "https://akcdn.detik.net.id/visual/2020/11/16/latar-belakang-keluarga-4-member-blackpink_11.jpeg?w=480&q=90",),
         ListItem(
        "https://akcdn.detik.net.id/visual/2020/11/16/latar-belakang-keluarga-4-member-blackpink_11.jpeg?w=480&q=90",
        "Blackpink adalah grup vokal wanita asal Korea Selatan.",
        "Marvel",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbzWUSJzMfTeWpiDRgXqbRe3b0L7Dnt1Ogug&usqp=CAU",),
    ListItem(
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/hops/2020/08/54732062_987807854743111_8910087446601014125_n.jpg",
        "Blackpink dibentuk oleh YG Entertainment ",
        "Marvel",
        "https://img.inews.co.id/media/600/files/inews_new/2021/10/27/fakta_unik_member_blackpink.jpeg",),
    ListItem(
        "https://img.inews.co.id/media/600/files/inews_new/2021/10/27/fakta_unik_member_blackpink.jpeg",
        "Blackpink beranggotakan empat orang",
        "Marvel",
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/hops/2020/08/54732062_987807854743111_8910087446601014125_n.jpg",),
    ListItem(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbzWUSJzMfTeWpiDRgXqbRe3b0L7Dnt1Ogug&usqp=CAU",
        "Anggota Blackpink adalah Jennie, Jisoo, Lisa, dan Rosé",
        "Marvel",
        "https://akcdn.detik.net.id/visual/2020/11/16/latar-belakang-keluarga-4-member-blackpink_11.jpeg?w=480&q=90",)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 585,
      decoration: BoxDecoration(
        color: Colors.pink,
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.tokopedia.net/blog-tokopedia-com/uploads/2021/01/Megaonemega.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 400,
                height: 150,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.separated(
                  itemCount: itemList.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.black,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(10),
                        height: 110,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(itemList[index].image),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 100, // Adjust the width as needed
                                  child: Text(
                                    itemList[index].artikel,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ));
                  },
                ),
              ),
            ],
          ),
          Center(
              child: Text(
            "galery",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(itemList[index].galery),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),

        ],
      ),
    );
  }
}