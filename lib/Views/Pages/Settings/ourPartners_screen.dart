import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_flutter_workshop/Core/Resources/ColorManager.dart';
import 'package:odc_flutter_workshop/Core/Resources/FontManager.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Auth/login_cubit.dart';
import 'package:odc_flutter_workshop/ViewModel/Bloc/Settings/our_partners_cubit.dart';

import '../../Components/Core/main_appBar.dart';

class OurPartnersScreen extends StatelessWidget {
  const OurPartnersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OurPartnersCubit(),
      child: BlocConsumer<OurPartnersCubit, AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          OurPartnersCubit ourPartners = OurPartnersCubit.get(context);
          return Scaffold(
                backgroundColor: Colors.white,
                appBar: MainAppbarWithLeading(text: "Our Partners", appBar: AppBar(), leadingFunction: () {Navigator.pop(context);}, leadingIconColor: ColorManager.mainColor,),
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Card(
                            elevation: 2.0,
                            color: Colors.white54,
                            child: Container(
                                height: 280,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Expanded(
                                  child: Image(image: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E1BAQENDMK0ZgaW8g/company-background_10000/0/1642165538816?e=1664110800&v=beta&t=Tdal1WhEDfpuFYR0myus5hkl1GgAbU2jVndTg3Qipdw", scale: .001),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FontManager(text: "ODCs", textSize: 25.0, textWeight: FontWeight.bold, textColor: ColorManager.textColor,),
                              ],
                            ),
                          )
                        ],
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
