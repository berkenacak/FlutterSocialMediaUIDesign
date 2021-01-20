import 'package:flutter/material.dart';

import 'gonderiKarti.dart';

class ProfilSayfasi extends StatelessWidget {
  final String isimSoyad;
  final String kullaniciAdi;
  final String kapakFotoLinki;
  final String profilFotoLinki;

  const ProfilSayfasi(
      {Key key,
      this.isimSoyad,
      this.kullaniciAdi,
      this.kapakFotoLinki,
      this.profilFotoLinki})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 240.0,
                //color: Colors.yellow,
              ),
              Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          image: NetworkImage(kapakFotoLinki),
                          fit: BoxFit.cover))),
              Positioned(
                left: 20.0,
                bottom: 0.0,
                child: Hero(
                  tag: kullaniciAdi,
                  child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(60.0),
                          border: Border.all(width: 2.0, color: Colors.white),
                          image: DecorationImage(
                              image: NetworkImage(profilFotoLinki),
                              fit: BoxFit.cover))),
                ),
              ),
              Positioned(
                top: 190.0,
                left: 145.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isimSoyad,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      kullaniciAdi,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 130.0,
                right: 15.0,
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[100],
                      border: Border.all(width: 2.0, color: Colors.white)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_circle,
                        size: 18.0,
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        "Takip Et",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.grey[200],
                ),
                onPressed: () {
                  Navigator.pop(context, "I'm back");
                },
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 75.0,
            color: Colors.grey.withOpacity(0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfilBilgi(sayi: "20K", yazi: "Takipçi"),
                ProfilBilgi(sayi: "500", yazi: "Takip"),
                ProfilBilgi(sayi: "75", yazi: "Paylaşım")
              ],
            ),
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2018/06/24/10/03/motorcycle-3494230_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_960_720.jpg",
            isimSoyad: isimSoyad,
            gecenSure: "2 year ago",
            aciklama: "Sweet Dog",
          )
        ],
      ),
    );
  }
}

class ProfilBilgi extends StatelessWidget {
  final String sayi;
  final String yazi;

  const ProfilBilgi({
    Key key,
    this.sayi,
    this.yazi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sayi,
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(
          yazi,
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),
        )
      ],
    );
  }
}
