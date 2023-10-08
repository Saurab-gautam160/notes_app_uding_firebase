import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appstyle {
  static Color backgroundcolor = const Color(0xFFe2e2ff);
  static Color maincolor = const Color(0xff000633);
  static Color accentcolor = const Color(0xff0065ff);

  static List<Color> cardsColor = [
    Colors.white,
    Colors.red.shade200,
    Colors.pink.shade200,
    Colors.orange.shade200,
    Colors.yellow.shade200,
    Colors.green.shade200,
    Colors.blueGrey.shade200,
    Colors.blue.shade200,
  ];

  static TextStyle maintitle = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.bold,

  );


  static TextStyle maincontent = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    
  );


  static TextStyle datetitle = GoogleFonts.roboto(
    fontSize: 13.0,
    fontWeight: FontWeight.w500,
    
  );
}
