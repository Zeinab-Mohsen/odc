import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Widget Button(
  {required String text,
    required Color textColor,
    required Function() function,
    double textSize = 25.0,
    FontWeight textWeight = FontWeight.normal})

{return TextButton(
    onPressed: function,
    child:Text(
      text,
      style: GoogleFonts.poppins(
        color: textColor,
        fontWeight: textWeight,
        fontSize: textSize ,
      ),
    ),
  );
}
