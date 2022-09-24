import 'package:flutter/material.dart';

class vertikal extends StatelessWidget {
  String gambar, judul, tanggal;

  vertikal(this.gambar, this.judul, this.tanggal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Row(
            children: <Widget>[
              Image.network(gambar, width: 180),
              Expanded(
                child: Text(
                  judul,
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              alignment: Alignment.centerLeft,
              width: 500,
              height: 50,
              child: Text(tanggal),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
            ),
          ],
        ),
      ],
    );
  }
}
