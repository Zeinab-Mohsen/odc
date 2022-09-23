import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Auth/login_cubit.dart';
import 'package:odc_flutter_workshop/Views/Components/Core/main_appBar.dart';
import 'package:odc_flutter_workshop/Views/Components/Home/card_info.dart';

import '../../../Core/Resources/FontManager.dart';
import '../../../ViewModel/Bloc/Home/lectures_cubit.dart';

class LecturesScreen extends StatelessWidget {
  const LecturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => LecturesCubit()..getData(),
      child: BlocConsumer<LecturesCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LecturesCubit lecturesCubit = LecturesCubit.get(context);
          return Scaffold(
            appBar: MainAppbarWithActionsAndLeading(text: "Lectures", appBar: AppBar(), leadingFunction: (){Navigator.pop(context);}, leadingIconColor: ColorManager.mainColor, actionFunction: (){}),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: lecturesCubit.lecturesModel == null ? FontManager(text: "Loading") : ListView.builder(
                  itemCount: lecturesCubit.lecturesModel!.data!.length,
                  itemBuilder: (context, index) {
                    return CardInfo(subject: lecturesCubit.lecturesModel!.data![index].lectureSubject.toString(),
                        cardType: "Lecture Day", day: lecturesCubit.lecturesModel!.data![index].lectureDate.toString(),
                        startTime: lecturesCubit.lecturesModel!.data![index].lectureStartTime.toString(),
                        endTime: lecturesCubit.lecturesModel!.data![index].lectureEndTime.toString(), duration: "2hrs");
                  }
              ),
            ),
          );
        },
    ),
    );
  }
}
