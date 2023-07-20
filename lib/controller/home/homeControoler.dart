import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tashtari_delivery/core/constant/services/services.dart';

import '../../core/class/statusrequest.dart';

abstract class homePageControoler extends GetxController {
  StatusRequest? statusRequest;

  bool issearch = false;

  String? langselected;
  MyServices myservices = Get.find();
  String? phone;
  String? email;
  String? name;

  String? id;
}

class ImphomePageControoler extends homePageControoler {
  @override
  void onInit() {
    id = myservices.sharedPreferences.getString("id");
    email = myservices.sharedPreferences.getString("email");
    name = myservices.sharedPreferences.getString("name");
    phone = myservices.sharedPreferences.getString("phone");
    String? userid = myservices.sharedPreferences.getString("id");
    FirebaseMessaging.instance.subscribeToTopic("delivery");
    FirebaseMessaging.instance.subscribeToTopic("delivery${userid}");

    langselected = myservices.sharedPreferences.getString("lang");
    super.onInit();
  }
}
