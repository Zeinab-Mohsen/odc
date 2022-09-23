import 'package:flutter/material.dart';
import 'package:odc_flutter_workshop/Views/Pages/Auth/login_screen.dart';
import 'package:odc_flutter_workshop/Views/Pages/Home/home_screen.dart';
import 'package:odc_flutter_workshop/Views/Pages/Settings/terms&conditions_screen.dart';
import 'package:odc_flutter_workshop/Views/Pages/news_screen.dart';
import 'package:odc_flutter_workshop/Views/Pages/Home/notes_screen.dart';
import 'package:odc_flutter_workshop/Views/Pages/Home/sections_screen.dart';
import 'package:odc_flutter_workshop/Views/Pages/Auth/signup_screen.dart';
import 'package:odc_flutter_workshop/Views/Pages/Settings/support_screen.dart';
import 'package:odc_flutter_workshop/Views/Pages/splashScreen.dart';

import 'ViewModel/DataBase/Network/dio_helper.dart';
import 'Views/Pages/Home/finals_screen.dart';
import 'Views/Pages/Home/lectures_screen.dart';
import 'Views/Pages/Home/midterms_screen.dart';
import 'Views/Pages/Settings/ourPartners_screen.dart';
import 'Views/Pages/Settings/settings_screen.dart';


main() async {
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
