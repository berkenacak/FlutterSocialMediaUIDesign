import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_ui_design/profilSayfasi.dart';

import 'gonderiKarti.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            ),
            onPressed: () {}),
        title: Text(
          "Berke Nacak",
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.purple[300],
                size: 32.0,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(children: [
                        duyuru("James seni takip etti2", "3 dakika önce"),
                        duyuru("Berke gönderini beğendi", "7 dakika önce"),
                        duyuru("Emre gönderine yorum yapti", "1 saat önce")
                      ]);
                    });
              })
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 107.0,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 10.0)
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                profilKartiOlustur(
                  "james",
                  "https://cdn.pixabay.com/photo/2016/03/12/23/18/man-1253004_960_720.jpg",
                  "James",
                  "https://cdn.pixabay.com/photo/2021/01/09/19/59/mountains-5903352_960_720.jpg",
                ),
                profilKartiOlustur(
                  "berke",
                  "https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_960_720.jpg",
                  "Berke",
                  "https://cdn.pixabay.com/photo/2021/01/09/19/59/mountains-5903352_960_720.jpg",
                ),
                profilKartiOlustur(
                  "emre",
                  "https://cdn.pixabay.com/photo/2020/08/08/12/07/collage-5472849_960_720.jpg",
                  "Emre",
                  "https://cdn.pixabay.com/photo/2021/01/09/19/59/mountains-5903352_960_720.jpg",
                ),
                profilKartiOlustur(
                  "sinan",
                  "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg",
                  "Sinan",
                  "https://cdn.pixabay.com/photo/2021/01/09/19/59/mountains-5903352_960_720.jpg",
                ),
                profilKartiOlustur(
                  "firat",
                  "https://cdn.pixabay.com/photo/2018/06/24/10/03/motorcycle-3494230_960_720.jpg",
                  "Fırat",
                  "https://cdn.pixabay.com/photo/2021/01/09/19/59/mountains-5903352_960_720.jpg",
                ),
                profilKartiOlustur(
                  "david",
                  "https://cdn.pixabay.com/photo/2020/05/06/12/32/binary-5137349_960_720.jpg",
                  "David",
                  "https://cdn.pixabay.com/photo/2021/01/09/19/59/mountains-5903352_960_720.jpg",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2016/03/12/23/18/man-1253004_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2020/08/08/12/07/collage-5472849_960_720.jpg",
            isimSoyad: "Berke Nacak",
            gecenSure: "1 year ago",
            aciklama: "Hello Everyone!",
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2020/05/06/12/32/binary-5137349_960_720.jpg",
            isimSoyad: "Emre Çetin",
            gecenSure: "3 year ago",
            aciklama: "A photo",
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.purple[100],
          child: Icon(
            Icons.add_a_photo,
            color: Colors.white,
          )),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mesaj,
            style: TextStyle(fontSize: 17.0),
          ),
          Text(gecenSure)
        ],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki,
      String isimSoyad, String kapakFotoLinki) {
    return Material(
      child: InkWell(
        onTap: () async {
          String donenVeri = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProfilSayfasi(
                        profilFotoLinki: resimLinki,
                        kullaniciAdi: kullaniciAdi,
                        kapakFotoLinki: kapakFotoLinki,
                        isimSoyad: isimSoyad,
                      )));
          print(donenVeri);
        },
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                              image: NetworkImage(resimLinki),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
