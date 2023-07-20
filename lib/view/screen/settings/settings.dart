import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tashtari_delivery/controller/home/homeControoler.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ImphomePageControoler());

    return GetBuilder<ImphomePageControoler>(
      builder: (controller) {
        return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(children: []));
      },
    );
  }
}
