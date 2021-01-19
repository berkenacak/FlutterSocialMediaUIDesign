import 'package:flutter/material.dart';

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

class AnaSayfa extends StatelessWidget {
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
              onPressed: () {})
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
                profilKartiOlustur("Selçuk",
                    "https://cdn.pixabay.com/photo/2016/03/12/23/18/man-1253004_960_720.jpg"),
                profilKartiOlustur("Berke",
                    "https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_960_720.jpg"),
                profilKartiOlustur("Emre",
                    "https://cdn.pixabay.com/photo/2020/10/05/08/04/boys-5628502_960_720.jpg"),
                profilKartiOlustur("Sinan",
                    "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg"),
                profilKartiOlustur("Fırat",
                    "https://cdn.pixabay.com/photo/2018/06/24/10/03/motorcycle-3494230_960_720.jpg"),
                profilKartiOlustur("Selçuk",
                    "https://cdn.pixabay.com/photo/2020/05/06/12/32/binary-5137349_960_720.jpg"),
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
                "https://cdn.pixabay.com/photo/2020/10/05/08/04/boys-5628502_960_720.jpg",
            isimSoyad: "Berke Nacak",
            gecenSure: "1 sene önce",
            aciklama: "Geçen yaz çekindim",
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2020/05/06/12/32/binary-5137349_960_720.jpg",
            isimSoyad: "Emre Nacak",
            gecenSure: "3 sene önce",
            aciklama: "Geçen kış çekindim",
          )
        ],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
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

class ProfilSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Profil Sayfası")),
    );
  }
}
