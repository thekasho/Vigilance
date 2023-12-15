import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../app_links.dart';
import '../../core/class/statusrequest.dart';
import '../../core/data/remote/requests.dart';
import '../../helpers/helpers.dart';
import '../../repo/api.dart';

abstract class ShoppingCont extends GetxController {
  checkNetwork();
  getItems();
}
class ShoppingContImp extends ShoppingCont {
  Requests requests = Requests(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  bool isConnected = false;
  List items = [];
  String email = "";

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  getItems() async {
    try {
      statusRequest = StatusRequest.loading;
      update();

      var loginData = await LocaleApi.getLoginData();

      if(!isConnected){
        Get.defaultDialog(
          backgroundColor: white,
          title: "Error",
          titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
          titleStyle: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Cairo",
              color: red,
              fontWeight: FontWeight.bold
          ),
          content: Text(
            "No Internet Connection !!",
            style: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Cairo",
            ),
          ),
        );
        statusRequest = StatusRequest.failure;
        update();
        return;
      }

      if(loginData != null){
        var itemsResponse = await requests.getMapData(ApiLinks.getShoppingItems);
        if(itemsResponse['statue'] == "success" && itemsResponse['result'].length >= 1){
          items = [];
          items.addAll(itemsResponse['result']);
          statusRequest = StatusRequest.success;
          update();
        }
      }

    } catch (e) {

    }
  }

  @override
  void onInit() async {
    await checkNetwork();
    getItems();
    super.onInit();
  }

}