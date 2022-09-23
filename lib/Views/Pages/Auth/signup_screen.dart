import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Core/Resources/ColorManager.dart';
import '../../../Core/Resources/FontManager.dart';
import '../../../ViewModel/Bloc/Auth/login_cubit.dart';
import '../../../ViewModel/Bloc/Auth/signup_cubit.dart';
import '../../Components/Auth/Button.dart';
import '../../Components/Auth/Divider.dart';
import '../../Components/Core/TextFormField.dart';
import '../news_screen.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, AppState>(
        listener: (context, state) {
        // TODO: implement listener
        },
        builder: (context, state) {
          SignUpCubit signup = SignUpCubit.get(context);
          String genderDropdownValue = signup.genderList.first;
          String uniDropdownValue = signup.uniList.first;
          String gradeDropdownValue = signup.gradeList.first;

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
                      padding: const EdgeInsets.only(top: 50.0),
                      child: FontManager(text: "Sign Up", textWeight: FontWeight.w500,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: textFormField(text: "Name", control: signup.nameController,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: textFormField(text: "E-Mail", control: signup.emailController,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child:textFormFieldSufIcon(text: "Password", sufIcon: Icons.remove_red_eye_rounded, control: signup.passwordController,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child:textFormFieldSufIcon(text: "Confirm Password", sufIcon: Icons.remove_red_eye_rounded, control: signup.confirmPasswordController,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: textFormField(text: "Phone Number", control: signup.phoneController,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              FontManager(text: "Gender", textSize: 18.0,),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.deepOrange),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: DropdownButton<String>(
                                  value: genderDropdownValue,
                                  icon: Transform.rotate(
                                    angle: 4.7 ,
                                    child: Icon(
                                      Icons.arrow_back_ios_outlined,
                                    ),
                                  ),
                                  style: GoogleFonts.poppins(color: ColorManager.blackColor,),
                                  onChanged: (String? value) {
                                    print(value);
                                  },
                                  items: signup.genderList.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              FontManager(text: "University", textSize: 18.0,),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.deepOrange),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: DropdownButton<String>(
                                  value: uniDropdownValue,
                                  icon: Transform.rotate(
                                    angle: 4.7 ,
                                    child: Icon(
                                      Icons.arrow_back_ios_outlined,
                                    ),
                                  ),
                                  style: GoogleFonts.poppins(color: ColorManager.blackColor,),
                                  onChanged: (String? value) {
                                    print(value);
                                  },
                                  items: signup.uniList.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              FontManager(text: "Grade", textSize: 18.0,),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.deepOrange),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: DropdownButton<String>(
                                  value: gradeDropdownValue,
                                  icon: Transform.rotate(
                                    angle: 4.7 ,
                                    child: Icon(
                                      Icons.arrow_back_ios_outlined,
                                    ),
                                  ),
                                  style: GoogleFonts.poppins(color: ColorManager.blackColor,),
                                  onChanged: (String? value) {
                                  },
                                  items: signup.gradeList.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: double.infinity,
                        child: Button(function: (){signup.signUp(); Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen()),);},
                            text: "Sign Up", textColor: ColorManager.textColor, textWeight: FontWeight.w500),
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
                      child: Button(function: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),);},
                          text: "Login", textColor: ColorManager.mainColor, textWeight: FontWeight.w500),
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
