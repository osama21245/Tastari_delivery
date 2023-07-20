import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tashtari_delivery/core/constant/localization/changelocal.dart';
import 'package:tashtari_delivery/core/constant/routesname.dart';
import 'package:tashtari_delivery/core/function/databaseTranslate.dart';
import 'package:tashtari_delivery/view/widget/language/CustomButtonlang.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("1".tr,
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                CustomButtonLang(
                    textbutton: "Ar",
                    onPressed: () {
                      controller.changeLang("ar");
                      Get.toNamed(AppRoutes.onboarding);
                    }),
                CustomButtonLang(
                    textbutton: "En",
                    onPressed: () {
                      controller.changeLang("en");
                      myservices.sharedPreferences.setString("step", "1");

                      Get.toNamed(AppRoutes.login);
                    }),
              ],
            ),
          )),
    );
  }
}
