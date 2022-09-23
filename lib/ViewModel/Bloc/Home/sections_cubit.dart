import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/ViewModel/DataBase/Network/dio_helper.dart';
import 'package:odc_flutter_workshop/ViewModel/DataBase/Network/end_points.dart';

import '../../../Model/Home/sections_model.dart';
import '../Auth/login_cubit.dart';


class SectionsCubit extends Cubit<AppState> {
  SectionsCubit() : super(SectionsInitial());

  static SectionsCubit get(context) => BlocProvider.of(context);

  SectionsModel? sectionsModel;

  void getData() async{
    await DioHelper.getData(url: sectionEndPoint, token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzIzLCJyb2xlIjo0LCJpYXQiOjE2NjM3NTU5NjgsImV4cCI6MTc1MDE1NTk2OH0.QTkOijQ_cWuQcb4O1frjgaBM8IgJ9-lngyQjztasZ9I").then((value){
      sectionsModel = SectionsModel.fromJson(value.data);
      print(sectionsModel!.data![0].sectionSubject);
      emit(SectionDone());
    });
  }

}
