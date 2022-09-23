import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';

class FontManager extends StatelessWidget {
  Color textColor;
  String text;
  double textSize;
  FontWeight textWeight;

   FontManager({Key? key, required this.text, this.textColor = ColorManager.blackColor, this.textSize = 25.0, this.textWeight = FontWeight.normal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: textColor,
        fontWeight: textWeight,
        fontSize: textSize ,
      ),
    );
  }
}
