import 'package:flutter/material.dart';
import 'package:flutter_project_1/project/DataCardProduct.dart';
import 'package:flutter_project_1/project/componen1.dart';
import 'package:flutter_project_1/project/dataBanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Nama Toko", style: TextStyle(fontSize: 25)),
              Icon(Icons.card_travel_outlined),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Promo Hari Ini",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DataBanner(dataTextBanner: 'Diskon Sampai 50%'),
                  DataBanner(dataTextBanner: 'Barang Baru'),
                  DataBanner(dataTextBanner: 'Diskon Kartu Debit'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Text(
                "Semua Product",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                //ini adalah kolom kiri
                Column(
                  children: [
                    DataCardProduct(),
                    DataCardProduct(),
                    DataCardProduct(),
                  ],
                ),

                //ini adalah kolom kanan
                Column(
                  children: [
                    DataCardProduct(),
                    DataCardProduct(),
                    DataCardProduct(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}