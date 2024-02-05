import 'package:belajar/screens/detail_nature_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListNatureScreen extends StatelessWidget {
  final List<Map<String, dynamic>> natureData = [
    {
      "nama": "Puncak Jaya",
      "letak": "Papua Tengah",
      "image": "images/puncakjaya.jpg",
      "desc": "Puncak Jaya Wijaya atau Piramida Carstensz ialah sebuah puncak tertinggi yang menjadi bagian dari Pegunungan Barisan Sudirman yang terdapat di Kabupaten Mimika, letak Papua Tengah, Indonesia. Puncak Jaya atau Piramida Carstensz mempunyai ketinggian 4.883 mdpl dan di sekitarnya terdapat gletser dengan nama yang sama yakni gletser Carstensz, satu-satunya gletser tropika di Indonesia, yang tersisa dan secara perlahan mulai menipis akibat pemanasan global.[3][4]",
    },
    {
      "nama": "Pegunungan Foja",
      "letak": "Papua",
      "image": "images/foja.png",
      "desc": "Pegunungan Foja, atau Mamberamo-Pegunungan Foja, adalah rangkaian gunung yang terletak di sebelah utara Sungai Mamberamo di kawasan Papua, Indonesia. Titik tertingginya ialah 2.193 m. Pegunungan ini merupakan bagian dari daerah aliran sungai Mamberamo yang memasok air bersih di seluruh kawasan Papua bagian utara. Sebuah suaka margasatwa seluas 1.442.500 hektare berada di pegunungan ini.",
    },
    {
      "nama": "Gunung Rinjani",
      "letak": "Lombok",
      "image": "images/rinjani.png",
      "desc": "Gunung Rinjani adalah gunung yang berlokasi di Pulau Lombok, Nusa Tenggara Barat. Gunung yang merupakan gunung berapi kedua tertinggi di Indonesia dengan ketinggian 3.726 mdpl serta terletak pada lintang 8º25' LS dan 116º28' BT ini merupakan gunung favorit bagi pendaki Indonesia karena keindahan pemandangannya.[2] Gunung ini merupakan bagian dari Taman Nasional Gunung Rinjani yang memiliki luas sekitar 41.330 ha dan ini akan diusulkan penambahannya sehingga menjadi 76.000 ha ke arah barat dan timur.",
    },
    {
      "nama": "Gunung Agung",
      "letak": "Bali",
      "image": "images/Agung.jpg",
      "desc": "Gunung Agung adalah gunung tertinggi di pulau Bali dengan ketinggian 3.142 mdpl. Gunung ini terletak di kecamatan Rendang, Kabupaten Karangasem, Bali, Indonesia. Pura Besakih, yang merupakan salah satu Pura terpenting di Bali, terletak di lereng gunung ini.",
    },
    {
      "nama": "Gunung Iliboleng",
      "letak": "provinsi Nusa Tenggara Timur",
      "image": "images/limboli.png",
      "desc": "Iliboleng adalah sebuah gunung berapi yang berada di tenggara Pulau Adonara di wilayah Larantuka, Kabupaten Flores Timur, provinsi Nusa Tenggara Timur. Gunung ini tercatat terakhir kali meletus pada tahun 1885. Gunung ini memiliki beberapa kawah antara lain K1, K2, K3, K4, K5 (kawah utama) dan Kawah Riawale. Sejarah letusan pertama kali tercatat pada 1885 yang terdiri dari berbagai ledakan moderat. Ledakan yang diikuti lava tercatat pada letusan 1888.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: natureData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder: (context) => DetailNatureScreeen(
                      nama: natureData[index]["nama"],
                      letak: natureData[index]["letak"],
                      image: natureData[index]["image"],
                      desc: natureData[index]["desc"]
                      ),
                      ),
                      );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin:EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image:AssetImage("${natureData[index]["image"]}"),
                    fit: BoxFit.cover),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue
                  ),
                  child: Text(
                    "${natureData[index]["nama"]} - ${natureData[index]["letak"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
          ),
      ),
    );
  }
}