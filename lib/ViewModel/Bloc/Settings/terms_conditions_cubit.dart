import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/Model/terms&conditions_model.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Auth/login_cubit.dart';
import 'package:odc_flutter_workshop/ViewModel/DataBase/Network/end_points.dart';

import '../../DataBase/Network/dio_helper.dart';


class TermsConditionsCubit extends Cubit<AppState> {
  TermsConditionsCubit() : super(TermsConditionsInitial());

  static TermsConditionsCubit get(context) => BlocProvider.of(context);

  TermsAndConditionsModel? termsAndConditionsModel;

  void getData() async{
    await DioHelper.getData(url: termsEndPoint, token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzIzLCJyb2xlIjo0LCJpYXQiOjE2NjM3NTU5NjgsImV4cCI6MTc1MDE1NTk2OH0.QTkOijQ_cWuQcb4O1frjgaBM8IgJ9-lngyQjztasZ9I").then((value){
      termsAndConditionsModel = TermsAndConditionsModel.fromJson(value.data);
      print(termsAndConditionsModel!.data!.terms);
      emit(TermsConditionDone());
    });
  }


}
