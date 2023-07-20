import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/routesname.dart';
import '../../../core/constant/services/theme.dart';
import '../../../core/function/databaseTranslate.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/Untitled design.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            accountName:
                Text("${myservices.sharedPreferences.getString("name")}"),
            accountEmail:
                Text("${myservices.sharedPreferences.getString("email")}")),
        ListTile(
          trailing: Switch(
              value: ThemeSrevice().isSavedDarkMode(),
              onChanged: (value2) {
                setState(() {
                  ThemeSrevice().changeTheme();
                });
              }),
          contentPadding: const EdgeInsets.symmetric(horizontal: 19),
          title: Row(
            children: [
              Text("63".tr,
                  style: const TextStyle(
                    fontFamily: "PlayfairDisplay",
                  )),
              const Icon(
                Icons.nightlight_outlined,
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            String? lang = myservices.sharedPreferences.getString("lang");
            lang == "en"
                ? Get.defaultDialog(
                    title: "Warning",
                    middleText:
                        "Are You sure you want to change language to Arabic "
                            .tr,
                    onConfirm: () {
                      myservices.sharedPreferences.setString("lang", "ar");
                      print(lang);
                      exit(0);
                    },
                    onCancel: () {},
                    buttonColor: AppColor.primaryColor,
                    confirmTextColor: Colors.white,
                    cancelTextColor: AppColor.primaryColor,
                    textConfirm: "48".tr,
                    textCancel: "49".tr)
                : Get.defaultDialog(
                    title: "تنبيه",
                    middleText: "هل تريد تغيير اللغه الي اللفه الانجليزيه ".tr,
                    onConfirm: () {
                      myservices.sharedPreferences.setString("lang", "en");
                      print(lang);
                      exit(0);
                    },
                    onCancel: () {},
                    buttonColor: AppColor.primaryColor,
                    confirmTextColor: Colors.white,
                    cancelTextColor: AppColor.primaryColor,
                    textConfirm: "48".tr,
                    textCancel: "49".tr);
          },
          child: ListTile(
            trailing: const Icon(Icons.translate),
            contentPadding: const EdgeInsets.symmetric(horizontal: 19),
            title: Text("99".tr,
                style: const TextStyle(fontFamily: "PlayfairDisplay")),
          ),
        ),
        InkWell(
          onTap: () {
            Get.toNamed(AppRoutes.Orderarchive);
          },
          child: ListTile(
            trailing: const Icon(Icons.archive_outlined),
            contentPadding: const EdgeInsets.symmetric(horizontal: 19),
            title: Text("67".tr,
                style: const TextStyle(fontFamily: "PlayfairDisplay")),
          ),
        ),
        InkWell(
          onTap: () {
            Get.defaultDialog(
                title: "46".tr,
                middleText: "71".tr,
                onConfirm: () {
                  String? userid = myservices.sharedPreferences.getString("id");
                  String? lang = myservices.sharedPreferences.getString("lang");
                  FirebaseMessaging.instance.unsubscribeFromTopic("delivery");
                  FirebaseMessaging.instance
                      .unsubscribeFromTopic("delivery${userid}");
                  myservices.sharedPreferences.clear();
                  myservices.sharedPreferences.setString("lang", lang!);
                  myservices.sharedPreferences.setString("step", "1");

                  print(lang);
                  Get.offAllNamed(AppRoutes.login);
                },
                onCancel: () {},
                buttonColor: AppColor.primaryColor,
                confirmTextColor: Colors.white,
                cancelTextColor: AppColor.primaryColor,
                textConfirm: "48".tr,
                textCancel: "49".tr);
          },
          child: Container(
            child: ListTile(
              trailing: const Icon(Icons.logout_outlined),
              contentPadding: const EdgeInsets.symmetric(horizontal: 19),
              title: Text("69".tr,
                  style: const TextStyle(fontFamily: "PlayfairDisplay")),
            ),
          ),
        )
      ],
    );
  }
}
