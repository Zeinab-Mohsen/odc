

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/Core/Resources/FontManager.dart';

Container SquareButton(
    {required Function() function,
      required String text,
      required String icon,

    })
{return Container(
  height: 100.0,
  width: 150.0,
  decoration: BoxDecoration(
    color: Colors.white54,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: ColorManager.hintTextColor,
        spreadRadius: 2,
        blurRadius: 3,
        offset: Offset(0, 7),

      ),
    ]
  ),
  child: MaterialButton(
    onPressed: function,
   child: Column(
     children: [
       SizedBox(height: 20.0,),
       SvgPicture.asset(icon,),
        SizedBox(height: 10.0,),
        FontManager(text: text, textColor: ColorManager.mainColor, textSize: 18.0, textWeight: FontWeight.w600,),
     ],
   ),
  ),
);
}