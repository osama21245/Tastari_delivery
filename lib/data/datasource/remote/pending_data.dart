import '../../../core/class/crud.dart';
import '../../../linksApi.dart';

class OrdersData {
  Crud crud;

  OrdersData(this.crud);

  getData() async {
    var response = await crud.postData(Apilinks.linkorderspending, {});
    return response.fold((l) => l, (r) => r);
  }

  ApproveOrder(String usersid, String orderid, String dleiveryman) async {
    var response = await crud.postData(Apilinks.linkorderapprove,
        {"userid": usersid, "orderid": orderid, "deliveryid": dleiveryman});
    return response.fold((l) => l, (r) => r);
  }
}
