import '../../../core/class/crud.dart';
import '../../../linksApi.dart';

class AcceptedData {
  Crud crud;

  AcceptedData(this.crud);

  getData(
    String usersid,
  ) async {
    var response = await crud.postData(Apilinks.linkordersaccepted, {
      "deliveryman": usersid,
    });
    return response.fold((l) => l, (r) => r);
  }

  Done(String usersid, String orderid, String dleiveryman) async {
    var response = await crud.postData(Apilinks.linkorderdone,
        {"userid": usersid, "orderid": orderid, "deliveryid": dleiveryman});
    return response.fold((l) => l, (r) => r);
  }
}
