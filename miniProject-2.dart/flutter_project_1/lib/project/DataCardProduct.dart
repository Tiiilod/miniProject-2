import 'package:flutter/material.dart';

class DataCardProduct extends StatelessWidget {
  const DataCardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        color: const Color.fromARGB(70, 158, 158, 158),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: 210,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://www.shutterstock.com/image-vector/casual-sneaker-shoes-front-view-600w-2228739513.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 20,
                    width: 50,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Diskon 10%",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 20,
                    width: 60,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        "Gratis Ongkir",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Sepatu Running Cepat",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // SizedBox(height: 20),
            Text(
              "Rp. 268.000",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 15),
            Row(
              spacing: 15,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Beli")),
                ),
                Icon(Icons.favorite_border_outlined),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
    );
  }
}