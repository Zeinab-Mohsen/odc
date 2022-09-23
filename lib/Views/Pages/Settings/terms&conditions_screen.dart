import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Auth/login_cubit.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Settings/terms_conditions_cubit.dart';

import '../../../Core/Resources/FontManager.dart';
import '../../Components/Core/main_appBar.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => TermsConditionsCubit()..getData(),
      child: BlocConsumer<TermsConditionsCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          TermsConditionsCubit termsConditionsCubit = TermsConditionsCubit.get(context);
          return Scaffold(
            appBar: MainAppbarWithLeading(text: "Terms & Conditions", appBar: AppBar(), leadingFunction: (){Navigator.pop(context);},),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: termsConditionsCubit.termsAndConditionsModel == null ? FontManager(text: "Loading") : ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index){
                    return HtmlWidget(termsConditionsCubit.termsAndConditionsModel!.data!.terms.toString(),);
                  }
              ),
            ),
          );
        },
      ),
    );
  }
}
