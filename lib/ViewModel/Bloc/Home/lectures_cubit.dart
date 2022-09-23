import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/ViewModel/DataBase/Network/dio_helper.dart';
import 'package:odc_flutter_workshop/ViewModel/DataBase/Network/end_points.dart';

import '../../../Model/Home/lectures_model.dart';
import '../../../Model/Home/sections_model.dart';
import '../Auth/login_cubit.dart';


class LecturesCubit extends Cubit<AppState> {
  LecturesCubit() : super(LecturesInitial());

  static LecturesCubit get(context) => BlocProvider.of(context);

  LecturesModel? lecturesModel;

  void getData() async{
    await DioHelper.getData(url: lectureEndPoint, token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzIzLCJyb2xlIjo0LCJpYXQiOjE2NjM3NTU5NjgsImV4cCI6MTc1MDE1NTk2OH0.QTkOijQ_cWuQcb4O1frjgaBM8IgJ9-lngyQjztasZ9I").then((value){
      lecturesModel = LecturesModel.fromJson(value.data);
      print(lecturesModel!.data![0].lectureSubject);
      emit(LectureDone());
    });
  }

}
