import 'package:get/get.dart';
import 'package:tashtari_delivery/core/constant/routesname.dart';

import 'package:tashtari_delivery/view/screen/auth/forgetpassword/checkemail.dart';
import 'package:tashtari_delivery/view/screen/auth/logIn.dart';
import 'package:tashtari_delivery/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:tashtari_delivery/view/screen/auth/signup.dart';
import 'package:tashtari_delivery/view/screen/auth/forgetpassword/sucsessResetPassword.dart';
import 'package:tashtari_delivery/view/screen/auth/signupVerifyCode.dart';
import 'package:tashtari_delivery/view/screen/auth/sucsessSignup.dart';
import 'package:tashtari_delivery/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:tashtari_delivery/view/screen/orders/ordersdetails.dart';

import 'core/middleWare/myMiddleWare.dart';
import 'language.dart';
import 'view/screen/orders/archived.dart';
import 'view/screen/orders/homepaemain.dart';
import 'view/screen/orders/pending.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [myMiddlware()]),
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.signup, page: () => const Signup()),
  GetPage(name: AppRoutes.checkemail, page: () => const Checkemail()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoutes.verifyCode, page: () => const VerifyCode()),
  GetPage(
      name: AppRoutes.sucsessresetPassword,
      page: () => const sucessResetPassword()),
  GetPage(name: AppRoutes.sucsessSignup, page: () => const sucessSignup()),
  GetPage(
      name: AppRoutes.signupverifyCode, page: () => const signupVerifyCode()),
  GetPage(name: AppRoutes.homemain, page: () => const Homemain()),
  GetPage(name: AppRoutes.homepage, page: () => const Pending()),
  GetPage(name: AppRoutes.OrdersDetails, page: () => const OrdersDetails()),
  GetPage(name: AppRoutes.Orderarchive, page: () => const Orderarchive()),
];
