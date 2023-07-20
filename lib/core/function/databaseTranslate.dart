import 'package:get/get.dart';
import 'package:tashtari_delivery/core/constant/services/services.dart';

MyServices myservices = Get.find();

databaseTranslate(columnar, columnen) {
  if (myservices.sharedPreferences.getString("lang") == "ar") {
    return columnar;
  } else if (myservices.sharedPreferences.getString("lang") == "en") {
    return columnen;
  }
}
