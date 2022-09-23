import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Auth/login_cubit.dart';
import 'package:odc_flutter_workshop/Views/Components/Auth/Button.dart';
import 'package:odc_flutter_workshop/Views/Components/Core/TextFormField.dart';
import 'package:odc_flutter_workshop/Views/Components/Core/main_appBar.dart';

import '../../../ViewModel/Bloc/Settings/support_cubit.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SupportCubit(),
      child: BlocConsumer<SupportCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SupportCubit support = SupportCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: MainAppbarWithLeading(text: "Support", appBar: AppBar(), leadingIconColor: ColorManager.mainColor , leadingFunction: (){Navigator.pop(context);}),
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: textFormFieldPrefIcon(text: "Name", prefIcon: Icons.person, prefIconColor: ColorManager.hintTextColor, colorCursor: ColorManager.mainColor, control: support.nameController)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: textFormFieldPrefIcon(text: "E-Mail", prefIcon: Icons.email, prefIconColor: ColorManager.hintTextColor, colorCursor: ColorManager.mainColor, control: support.emailController)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: textFormField(text: "What's making you unhappy?", lines: 6, align: true, colorCursor: ColorManager.mainColor, control: support.messageController)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: double.infinity,
                      child: Button(function: (){}, text: "Submit", textColor: ColorManager.textColor, textSize: 20, textWeight: FontWeight.w700,),
                    ),
                  ),
                ],
              ),
            ),
          );
          },
      ),
    );
  }
}
