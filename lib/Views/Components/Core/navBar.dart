//
//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
//
// import '../../../Core/Resources/ColorManager.dart';
//
// GNav navBar(
// {
//   return GNav(
// rippleColor: ColorManager.mainColor, // tab button ripple color when pressed
// hoverColor: ColorManager.mainColor, // tab button hover color
// haptic: true, // haptic feedback
// tabShadow: [BoxShadow(color: Colors.white, blurRadius: 8)], // tab button shadow
// curve: Curves.easeOutExpo, // tab animation curves
// duration: Duration(milliseconds: 400), // tab animation duration
// gap: 8, // the tab button gap between icon and text
// color: Colors.grey[800], // unselected icon color
// activeColor: ColorManager.mainColor, // selected icon and text color
// iconSize: 24, // tab button icon size
// tabBackgroundColor: ColorManager.mainColor.withOpacity(0.1), // selected tab background color
// padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
// tabs: [
// GButton(
// icon: LineIcons.home,
// text: 'Home',
// onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);},
// ),
// GButton(
// icon: LineIcons.newspaper,
// text: 'News',
// onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen()),);},
// ),
// GButton(
// icon: Icons.settings,
// text: 'Settings',
// onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()),);},
// ),
// ]
// );
// }
