import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/Views/Pages/Auth/login_screen.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

import '../../Core/Resources/FontManager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: AnimatedSplashScreen(
            duration: 3000,
            splash: Column(
              children: [
                Row( mainAxisAlignment: MainAxisAlignment.center,children: [ FontManager(text: "Orange ", textColor: Colors.deepOrange, textWeight: FontWeight.w600,), FontManager(text: "Digital Center", textWeight: FontWeight.w600,),],),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 30.0),
                  child: ProgressBarAnimation(
                    duration: Duration(milliseconds: 4600),
                    color: ColorManager.mainColor,
                    height: 10.0,
                    width: 500.0,
                  ),
                )
              ],
            ),
            nextScreen: LoginScreen(),
        )
      ),
    );
  }
}



// class SplashScreen extends StatefulWidget {
//   SplashScreen({Key? key}) : super(key: key);
//
//
// }
//
// class _SplashPageState extends State<SplashPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           EasySplashScreen(
//             logo: Image.network(
//                 'https://media-exp1.licdn.com/dms/image/C4E1BAQENDMK0ZgaW8g/company-background_10000/0/1642165538816?e=1664110800&v=beta&t=Tdal1WhEDfpuFYR0myus5hkl1GgAbU2jVndTg3Qipdw'),
//             logoWidth: 160,
//             showLoader: false,
//             //navigator: HomePage(),
//             durationInSeconds: 5,
//           ),
//           LinearProgressIndicator(
//             value: 1,
//             color: Colors.deepOrange,
//             //valueColor: AlwaysStoppedAnimation<Color>(Colors.deepOrange),
//             backgroundColor: Colors.grey,
//           ),
//         ],
//       ),
//     );
//   }
// }


// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget>with TickerProviderStateMixin {
//   late AnimationController controller;
//
//   @override
//   void initState() {
//     controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 5),
//     )..addListener(() {
//       setState(() {});
//     });
//     super.initState();
//   }
//
//   @override
//   // void dispose() {
//   //   controller.dispose();
//   //   super.dispose();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             LinearProgressIndicator(
//               value: controller.value,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
