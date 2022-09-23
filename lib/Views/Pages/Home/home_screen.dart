import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/Views/Pages/Home/lectures_screen.dart';
import 'package:odc_flutter_workshop/Views/Pages/Home/midterms_screen.dart';
import 'package:odc_flutter_workshop/Views/Pages/Home/sections_screen.dart';

import '../../../Core/Resources/FontManager.dart';
import '../../../ViewModel/Bloc/Auth/login_cubit.dart';
import '../../../ViewModel/Bloc/Home/home_cubit.dart';
import '../../Components/Home/square_button.dart';
import '../Settings/settings_screen.dart';
import '../news_screen.dart';
import 'events_screen.dart';
import 'finals_screen.dart';
import 'notes_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          HomeCubit homeCubit = HomeCubit.get(context);
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FontManager(text: "Orange ", textColor: Colors.deepOrange, textWeight: FontWeight.w600,),
                        FontManager(text: "Digital Center", textWeight: FontWeight.w600,),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SquareButton(text: "Lectures", icon: 'lib/assets/icons/lecture.svg', function: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LecturesScreen()),);}),
                            SquareButton(text: "Sections", icon: 'lib/assets/icons/sections.svg', function: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SectionsScreen()),); }),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SquareButton(text: "Midterms", icon: 'lib/assets/icons/midterm.svg', function: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MidTermsScreen()),); }),
                            SquareButton(text: "Finals",  icon: 'lib/assets/icons/final.svg', function: (){Navigator.push(context, MaterialPageRoute(builder: (context) => FinalsScreen()),); }),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SquareButton(text: "Events", icon: 'lib/assets/icons/event.svg', function: (){Navigator.push(context, MaterialPageRoute(builder: (context) => EventsScreen()),); }),
                            SquareButton(text: "Notes", icon: 'lib/assets/icons/notes.svg', function: (){Navigator.push(context, MaterialPageRoute(builder: (context) => NotesScreen()),); }),
                          ],
                        ),
                      ),
                    ],),
                ],
              )
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
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),); homeCubit.change(); HomeCubit.select = 0;},
                    ),
                    GButton(
                      icon: LineIcons.newspaper,
                      text: 'News',
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen()),); homeCubit.change(); HomeCubit.select = 1;},
                    ),
                    GButton(
                      icon: Icons.settings,
                      text: 'Settings',
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()),); homeCubit.change(); HomeCubit.select = 2;},
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
