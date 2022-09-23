import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/Model/Auth/signUp_model.dart';
import 'package:odc_flutter_workshop/ViewModel/DataBase/Network/end_points.dart';

import '../../DataBase/Network/dio_helper.dart';
import 'login_cubit.dart';


class SignUpCubit extends Cubit<AppState> {
  SignUpCubit() : super(LoginInitial());
  static SignUpCubit get(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  SignUpModel? signUpModel;



  List<String> genderList = <String>[' Female ', ' Male '];
  List<String> uniList = <String>[' Ain Shams ', ' AUC ', ' Cairo ', 'ELU', ' GUC ', 'Helwan', 'HTl'];
  List<String> gradeList = <String>[' Grade 1 ', ' Grade 2 ', ' Grade 3 ', ' Grade 4 ', ' Grade 5 '];


  signUp() async {
    var data = {
      "name": nameController.text.toString(),
      "password": passwordController.text.toString(),
      "email": emailController.text.toString(),
      "phoneNumber": phoneController.text.toString(),
      "universityId": 1,
      "gradeId": 4,
      "gender": 'f',
      "roleId": 2

    };

    await DioHelper.postData(url: registerEndPoint, data: data).then((value) {
      signUpModel = SignUpModel.fromJson(data);
      print(value.data);
    }
    ).catchError((e){
      print(e);
    });
  }

  void changeGenderSelection()
  {

  }

}
