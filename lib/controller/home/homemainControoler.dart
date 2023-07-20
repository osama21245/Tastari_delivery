import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tashtari_delivery/view/screen/orders/pending.dart';

import '../../view/screen/orders/accepted.dart';

// ignore: camel_case_types
abstract class homePageMainController extends GetxController {
  changePage(int currentpage);
}

class ImphomePageMainController extends homePageMainController {
  int currentpage = 0;

  List<Widget> listpage = [const Pending(), const Accepted()];
  List titlebottomappbar = [
    "97".tr,
    "96".tr,
  ];

  List<IconData> iconbottomappbar = [
    Icons.message,
    Icons.done_all,
  ];

  @override
  // ignore: avoid_renaming_method_parameters
  changePage(int i) {
    currentpage = i;

    update();
  }
}
