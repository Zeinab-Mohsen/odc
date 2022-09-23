import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Auth/login_cubit.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Home/exams_cubit.dart';
import 'package:odc_flutter_workshop/Views/Components/Core/main_appBar.dart';
import 'package:odc_flutter_workshop/Views/Components/Home/card_info.dart';

import '../../../Core/Resources/FontManager.dart';

class FinalsScreen extends StatelessWidget {
  const FinalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => ExamsCubit()..getData(),
      child: BlocConsumer<ExamsCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          ExamsCubit examsCubit = ExamsCubit.get(context);
          return Scaffold(
            appBar: MainAppbarWithActionsAndLeading(text: "Finals", appBar: AppBar(), leadingFunction: (){Navigator.pop(context);}, leadingIconColor: ColorManager.mainColor, actionFunction: (){}),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: examsCubit.examsModel == null ? FontManager(text: "Loading") : ListView.builder(
                  itemCount: examsCubit.examsModel!.data!.length,
                  itemBuilder: (context, index){
                      return examsCubit.examsModel!.data![index].finalExam != true ? Container() :
                          CardInfo(subject: examsCubit.examsModel!.data![index].examSubject.toString(),
                          cardType: "Exam Date", day: examsCubit.examsModel!.data![index].examDate.toString(),
                          startTime: examsCubit.examsModel!.data![index].examStartTime.toString(),
                          endTime: examsCubit.examsModel!.data![index].examEndTime.toString(), duration: "2hrs");
                  }
              ),
            ),
          );
        },
      ),
    );
  }
}
