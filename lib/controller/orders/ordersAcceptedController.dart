import 'package:get/get.dart';
import 'package:tashtari_delivery/data/datasource/remote/accepted_data.dart';

import '../../core/class/statusrequest.dart';
import '../../core/constant/services/services.dart';
import '../../core/function/handlingdata.dart';
import '../../data/model/orders_model.dart';

class OrdersacceptedController extends GetxController {
  StatusRequest? statusRequest;
  AcceptedData accepteddata = AcceptedData(Get.find());
  List<OrdersModel> orderslist = [];

  MyServices myservices = Get.find();
}

class ImpordersacceptedController extends OrdersacceptedController {
  // ignore: non_constant_identifier_names
  String ReturnorderStatus(String order) {
    if (order == "0") {
      return "Await Approval";
    } else if (order == "1") {
      return "Accepted";
    } else if (order == "2") {
      return "Prepare";
    } else if (order == "3") {
      return "On the way";
    } else if (order == "4") {
      return "Archive";
    } else {
      return "Un Known";
    }
  }

  resetData() {
    orderslist.clear();
    update();
  }

  refreshpage() {
    resetData();
    getData();
    update();
  }

  getData() async {
    orderslist.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await accepteddata
        .getData(myservices.sharedPreferences.getString("id").toString());
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "success") {
        List data = response["data"];
        orderslist.addAll(data.map((e) => OrdersModel.fromJson(e)));
      } else {}
    }
    update();
  }

  Done(String orderid, String deliveryid) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await accepteddata.Done(deliveryid, orderid,
        myservices.sharedPreferences.getString("id").toString());
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["status"] == "success") {
        print("success");
        getData();
      } else {
        print("fail");
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
