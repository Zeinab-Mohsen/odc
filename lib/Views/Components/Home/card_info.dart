import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Core/Resources/ColorManager.dart';
import '../../../Core/Resources/FontManager.dart';


Card CardInfo(
    { required String subject, cardType, day, startTime, endTime, duration,
    })
{return Card(
  elevation: 10.0,
  child: Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FontManager(text: subject, textSize: 20.0, textWeight: FontWeight.w400,),
            Row(
              children: [
                Icon(
                  Icons.timer,
                  color:Colors.black,
                  size: 20.0,
                ),
                FontManager(text: duration, textSize: 15.0, ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FontManager(text: cardType, textColor: ColorManager.cardTextColor, textSize: 15.0,),
                  Row(
                    children:[
                      Icon(
                        Icons.calendar_month,
                        color:Colors.black54,
                      ),
                      FontManager(text: day, textSize: 13.0,),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FontManager(text: "Start Time", textSize: 15.0, textColor: ColorManager.cardTextColor,),
                  Row(
                    children:[
                      Icon(
                        Icons.access_time_outlined,
                        color:Colors.green,
                      ),
                      FontManager(text: startTime, textSize: 15.0,),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FontManager(text: "End time", textSize: 15.0, textColor: ColorManager.cardTextColor,),
                  Row(
                    children:[
                      Icon(
                        Icons.access_time_outlined,
                        color:Colors.red,
                      ),
                      FontManager(text: endTime, textSize: 15.0,),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
}
