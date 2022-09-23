import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/Core/Resources/FontManager.dart';





Container SettingsRow(
    {required String text,
      required Function() function,
    })
{return Container(
  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
  decoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 2.0, color: ColorManager.settingsUnderLineColor),),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      FontManager(text: text, textSize: 18.0,),
      IconButton(
        onPressed: function,
        icon: Transform.rotate(
          angle: 3.2 ,
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: ColorManager.settingsInfoButtonColor,
            size: 20.0,
          ),
        ),
      ),
    ],
  ),
);
}

