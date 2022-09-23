import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/Core/Resources/FontManager.dart';

import '../../ViewModel/Bloc/Auth/login_cubit.dart';
import '../../ViewModel/Bloc/Home/home_cubit.dart';
import '../../ViewModel/Bloc/news_cubit.dart';
import '../Components/Core/main_appBar.dart';
import 'Home/home_screen.dart';
import 'Settings/settings_screen.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          NewsCubit newsCubit = NewsCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: MainAppbar(text: "News", appBar: AppBar()),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Container(
                              height: 280,
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Image(image: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E1BAQENDMK0ZgaW8g/company-background_10000/0/1642165538816?e=1664110800&v=beta&t=Tdal1WhEDfpuFYR0myus5hkl1GgAbU2jVndTg3Qipdw", scale: .001),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FontManager(text: "ODCs", textSize: 25.0, textWeight: FontWeight.bold, textColor: ColorManager.textColor,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(onPressed: (){}, icon: Icon(Icons.share, color: Colors.white, size: 20.0,)),
                                      Text("|", style: TextStyle(color: Colors.white,)),
                                      IconButton(onPressed: (){}, icon: Icon(Icons.copy, color: Colors.white, size: 20.0,)),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FontManager(text: "ODC Supports All Universites", textSize: 20.0, textColor: ColorManager.textColor,)
                      ),
                    ],
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: ColorManager.hintTextColor,
                      spreadRadius: 4,
                      blurRadius: 3,
                      offset: Offset(0, 0),
                    ),
                  ]
              ),
              height: 60.0,
              child: GNav(
                  rippleColor: ColorManager.mainColor,
                  hoverColor: ColorManager.mainColor,
                  haptic: true,
                  tabShadow: [BoxShadow(color: Colors.white, blurRadius: 8)],
                  curve: Curves.easeOutExpo,
                  duration: Duration(milliseconds: 400),
                  gap: 8,
                  color: Colors.grey[800],
                  activeColor: ColorManager.mainColor,
                  iconSize: 35,
                  selectedIndex: HomeCubit.select,
                  tabBackgroundColor: ColorManager.mainColor.withOpacity(0.1),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  tabs: [
                    GButton(
                      icon: LineIcons.home,
                      text: 'Home',
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),); newsCubit.change(); HomeCubit.select = 0;},
                    ),
                    GButton(
                      icon: LineIcons.newspaper,
                      text: 'News',
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen()),); newsCubit.change(); HomeCubit.select = 1;},
                    ),
                    GButton(
                      icon: Icons.settings,
                      text: 'Settings',
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()),); newsCubit.change(); HomeCubit.select = 2;},
                    ),
                  ]
              ),
            ),
          );
        },
      ),
    );
  }
}
