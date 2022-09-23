import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Core/Resources/ColorManager.dart';



TextFormField textFormField(
    {required String text,
      int lines = 1,
      bool align = false,
      Color colorCursor = ColorManager.blackColor,
      required TextEditingController control,
    })
{return TextFormField(
  controller: control,
    maxLines: lines,
    cursorColor: colorCursor,
    decoration: InputDecoration(
      // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.mainColor)),
      floatingLabelStyle: TextStyle(color: ColorManager.mainColor),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.mainColor,), borderRadius: BorderRadius.circular(15.0),),
      labelText: text,
      alignLabelWithHint: align,
      labelStyle: GoogleFonts.poppins(),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    ),
  );
}


TextFormField textFormFieldSufIcon(
    {required String text,
      required IconData sufIcon,
      Color sufIconColor = ColorManager.mainColor,
      Color colorCursor = ColorManager.blackColor,
      required TextEditingController control,
    })
{return TextFormField(
  cursorColor: colorCursor,
  controller: control,
  decoration: InputDecoration(
    // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.mainColor)),
    floatingLabelStyle: TextStyle(color: ColorManager.mainColor),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.mainColor,), borderRadius: BorderRadius.circular(15.0),),
    labelText: text,
    labelStyle: GoogleFonts.poppins(),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    suffixIcon: Icon(
      sufIcon,
      color: sufIconColor,
    ),
  ),
);
}


TextFormField textFormFieldPrefIcon(
    {required String text,
      required IconData prefIcon,
      Color prefIconColor = ColorManager.hintTextColor,
      Color colorCursor = ColorManager.blackColor,
      required TextEditingController control,
    })
{return TextFormField(
  cursorColor: colorCursor,
  controller: control,
  decoration: InputDecoration(
    // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.mainColor)),
    floatingLabelStyle: TextStyle(color: ColorManager.mainColor),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.mainColor,), borderRadius: BorderRadius.circular(15.0),),
    labelText: text,
    labelStyle: GoogleFonts.poppins(),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    prefixIcon: Icon(
      prefIcon,
      color: prefIconColor,
    ),
  ),
);
}






// class textFormFieldSufPrefIcon extends StatelessWidget {
//   String text;
//   IconData prefIcon, sufIcon;
//
//   textFormFieldSufPrefIcon({Key? key, required this.text, required this.prefIcon, required this.sufIcon}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: InputDecoration(
//         labelText: text,
//         labelStyle: GoogleFonts.poppins(),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15.0),
//         ),
//         suffixIcon: Icon(
//           sufIcon,
//           color: Colors.deepOrange,
//         ),
//         prefixIcon: Icon(
//           prefIcon,
//           color: Colors.deepOrange,
//         ),
//       ),
//     );
//   }
// }

