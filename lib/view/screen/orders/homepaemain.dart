import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tashtari_delivery/core/constant/color.dart';
import 'package:get/get.dart';

import '../../../controller/home/homemainControoler.dart';
import '../../../controller/orders/ordersAcceptedController.dart';
import '../../../controller/orders/orderspendingController.dart';

import '../../widget/drawer/customDrawer.dart';
import '../../widget/homeMain/custombuttomAppbarHome.dart';

class Homemain extends StatelessWidget {
  const Homemain({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ImphomePageMainController());
    ImpordersacceptedController controllerAccepted =
        Get.put(ImpordersacceptedController());
    ImporderspendingController controllerpending =
        Get.put(ImporderspendingController());
    return GetBuilder<ImphomePageMainController>(
      builder: (controller) => Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.primaryColor,
            onPressed: () async {
              await controllerAccepted.refreshpage();
              await controllerpending.refreshpage();
            },
            child: Icon(Icons.refresh),
          ),
          drawer: Drawer(child: CustomDrawer()),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const customBottomAppBarHome(),
          body: WillPopScope(
              child: controller.listpage.elementAt(controller.currentpage),
              onWillPop: () {
                Get.defaultDialog(
                    title: "46".tr,
                    middleText: "47".tr,
                    onConfirm: () {
                      exit(0);
                    },
                    onCancel: () {},
                    buttonColor: AppColor.primaryColor,
                    confirmTextColor: Colors.white,
                    cancelTextColor: AppColor.primaryColor,
                    textConfirm: "48".tr,
                    textCancel: "49".tr);
                return Future.value(false);
              })),
    );
  }
}
