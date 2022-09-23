import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/Core/Resources/FontManager.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Auth/login_cubit.dart';
import 'package:odc_flutter_workshop/Views/Components/Core/main_appBar.dart';

import '../../../ViewModel/Bloc/Home/notes_cubit.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: BlocConsumer<NotesCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          NotesCubit notesCubit = NotesCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: MainAppbarWithLeading(
              text: "Notes", appBar: AppBar(), leadingFunction: () {Navigator.pop(context);}, elev: 0.0, leadingIconColor: ColorManager.blackColor),
            body: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    child: Container(
                      height: 600.0,
                      child: Column(
                        children: [
                          FontManager(text: "There's No Data To Show",),
                        ],
                      ),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: ColorManager.elevatedButtonColor,
                  child: FontManager(text: "+"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
