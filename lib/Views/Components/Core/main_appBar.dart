import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/Core/Resources/FontManager.dart';


AppBar MainAppbar(
  {required String text,
    required AppBar appBar,
  })
{return AppBar(
    elevation: 0.0,
    centerTitle: true,
    backgroundColor: Colors.white,
    title: FontManager(
      text: text,
      textSize: 30.0,
      textWeight: FontWeight.w500,
    ),
  );
}


AppBar MainAppbarWithLeading(
    {required String text,
      required AppBar appBar,
      IconData leadingIcon = Icons.arrow_back_ios_outlined,
      Color leadingIconColor = Colors.black38,
      required Function()  leadingFunction,
      double elev = 5.0,
    })
{return AppBar(
  elevation: elev,
  centerTitle: true,
  backgroundColor: ColorManager.backGroundColor,
  title: FontManager(text: text, textSize: 25.0, textWeight: FontWeight.w600,),
  leading: IconButton(
    onPressed: leadingFunction,
    icon: Icon(leadingIcon),
    color: leadingIconColor,
  ),
);
}


AppBar MainAppbarWithActionsAndLeading(
    {required String text,
      required AppBar appBar,
      IconData leadingIcon = Icons.arrow_back_ios_outlined,
      Color leadingIconColor = Colors.black38,
      required Function()  leadingFunction,
      IconData actionIcon = Icons.filter_alt_sharp,
      Color actionIconColor = ColorManager.mainColor,
       required Function()  actionFunction,
})
{return AppBar(
    elevation: 5.0,
    centerTitle: true,
    backgroundColor: Colors.white,
    title: FontManager(text: text, textSize: 25.0, textWeight: FontWeight.w500,),
    leading: IconButton(
      onPressed: leadingFunction,
      icon: Icon(leadingIcon),
      color: leadingIconColor,
    ),
    actions:
    [
      IconButton(
        onPressed: (){},
        icon: Icon(
          actionIcon,
          color: actionIconColor,
          size: 30.0,
        ),
      ),
    ]
);
}