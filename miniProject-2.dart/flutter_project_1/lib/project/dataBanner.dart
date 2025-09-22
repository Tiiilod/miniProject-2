import 'package:flutter/material.dart';

class DataBanner extends StatelessWidget {
  final String dataTextBanner;
  const DataBanner({super.key, required this.dataTextBanner});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          dataTextBanner,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}