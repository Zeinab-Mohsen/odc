import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/Core/Resources/FontManager.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Auth/login_cubit.dart';
import 'package:odc_flutter_workshop/Views/Pages/Auth/signup_screen.dart';

import '../../../Core/Resources/ColorManager.dart';
import '../../Components/Auth/Button.dart';
import '../../Components/Auth/Divider.dart';
import '../../Components/Core/TextFormField.dart';
import '../news_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LoginCubit login = LoginCubit.get(context);
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FontManager(text: "Orange ", textColor: Colors.deepOrange, textWeight: FontWeight.w600,),
                          FontManager(text: "Digital Center", textWeight: FontWeight.w600,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: FontManager(text: "Login", textWeight: FontWeight.w500,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: textFormField(text: "E-Mail", control: login.emailController,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: textFormFieldSufIcon(text: "Password", sufIcon: Icons.remove_red_eye, control: login.passwordController,)
                    ),
                    FontManager(text:"Forgot Password?", textSize: 15.0, textColor: Colors.deepOrange,),
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: double.infinity,
                        child: Button(function: (){login.login(); Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen()),);},
                            text: "Login", textColor: ColorManager.textColor, textWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child:divider(),
                        ),
                        FontManager(text: " OR ", textSize: 20.0),
                        Expanded(
                          child:divider(),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3.0, color: ColorManager.mainColor),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Button(function: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()),);},
                          text: "Sign Up", textColor: ColorManager.mainColor, textWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          );
          },
      ),
    );
  }
}
