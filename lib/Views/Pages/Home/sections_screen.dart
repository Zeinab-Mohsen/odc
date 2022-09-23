import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/Core/Resources/FontManager.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Home/sections_cubit.dart';
import 'package:odc_flutter_workshop/Views/Components/Core/main_appBar.dart';
import 'package:odc_flutter_workshop/Views/Components/Home/card_info.dart';

import '../../../ViewModel/Bloc/Auth/login_cubit.dart';

class SectionsScreen extends StatelessWidget {
  const SectionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => SectionsCubit()..getData(),
      child: BlocConsumer<SectionsCubit, AppState>(
        listener: (context, state) {
        // TODO: implement listener
        },
        builder: (context, state) {
          SectionsCubit sectionsCubit = SectionsCubit.get(context);
          return Scaffold(
            appBar: MainAppbarWithActionsAndLeading(text: "Sections", appBar: AppBar(), leadingFunction: (){Navigator.pop(context);}, leadingIconColor: ColorManager.mainColor, actionFunction: (){}),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: sectionsCubit.sectionsModel == null ? FontManager(text: "Loading") : ListView.builder(
                itemCount: sectionsCubit.sectionsModel!.data!.length,
                itemBuilder: (context, index){
                  return CardInfo(subject: sectionsCubit.sectionsModel!.data![index].sectionSubject.toString(),
                          cardType: "Section Day", day: sectionsCubit.sectionsModel!.data![index].sectionDate.toString(),
                          startTime: sectionsCubit.sectionsModel!.data![index].sectionStartTime.toString(),
                          endTime: sectionsCubit.sectionsModel!.data![index].sectionEndTime.toString(), duration: "2hrs");
                }
                ),
            ),
          );
          },
      ),
    );
  }
}
