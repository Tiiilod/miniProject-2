import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Componen1 extends StatefulWidget {
  
  final String text;
  
  const Componen1({
    super.key, 
    required this.text, 
    });

  @override
  State<Componen1> createState() => _Componen1State();
}

class _Componen1State extends State<Componen1> {
  @override
  Widget build(BuildContext context) {
    return 
       Column(
        
        spacing: 10,
        children: [
          
          Container(
          alignment: Alignment.center,
          height: 80, 
          width: 200, 
          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 2), 
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueAccent,
        ),
          child: Text(widget.text, style: GoogleFonts.poppins(fontSize: 20, color: Colors.white,),
        ), 
          ),
      ],
    );
  }
}