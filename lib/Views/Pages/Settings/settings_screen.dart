import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Settings/settings_cubit.dart';
import 'package:odc_flutter_workshop/Views/Components/Core/main_appBar.dart';
import 'package:odc_flutter_workshop/Views/Components/Settings/settings_row.dart';
import 'package:odc_flutter_workshop/Views/Pages/Settings/ourPartners_screen.dart';
import 'package:odc_flutter_workshop/Views/Pages/Settings/support_screen.dart';
import 'package:odc_flutter_workshop/Views/Pages/Settings/terms&conditions_screen.dart';

import '../../../Core/Resources/ColorManager.dart';
import '../../../ViewModel/Bloc/Auth/login_cubit.dart';
import '../../../ViewModel/Bloc/Home/home_cubit.dart';
import '../Home/home_screen.dart';
import '../news_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: BlocConsumer<SettingsCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SettingsCubit settingsCubit = SettingsCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: MainAppbar(appBar: AppBar(), text: "Settings",),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SettingsRow(text: "FAQ", function: () {}),
                  SettingsRow(text: "Terms & Conditions", function: () {Navigator.push(context, MaterialPageRoute(builder: (context) => TermsConditionsScreen()),);}),
                  SettingsRow(text: "Our Partners", function: () {Navigator.push(context, MaterialPageRoute(builder: (context) => OurPartnersScreen()),);}),
                  SettingsRow(text: "Support", function: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SupportScreen()),);}),
                  SettingsRow(text: "Log Out", function: () {}),
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
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),); settingsCubit.change(); HomeCubit.select = 0;},
                    ),
                    GButton(
                      icon: LineIcons.newspaper,
                      text: 'News',
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen()),); settingsCubit.change(); HomeCubit.select = 1;},
                    ),
                    GButton(
                      icon: Icons.settings,
                      text: 'Settings',
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()),); settingsCubit.change(); HomeCubit.select = 2;},
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
