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
  buyItem(String image, int id);
  updatePoints();
}
class ShoppingContImp extends ShoppingCont {
  Requests requests = Requests(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  bool isConnected = false;
  List items = [];
  String email = "";
  String image = "";
  String points = "";

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  updatePoints() async {
    var loginData  = await LocaleApi.getLoginData();
    if(loginData != null){
      Map req = {
        'user_email': loginData['email']
      };
      var auth = await requests.postData(req, ApiLinks.getPoints);
      points = auth['result'].toString();
    }

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
        email = loginData['email'];
        image = loginData['image'];
        var itemsResponse = await requests.getMapData(ApiLinks.getShoppingItems);
        if(itemsResponse['statue'] == "success" && itemsResponse['result'].length >= 1){
          items = [];
          items.addAll(itemsResponse['result']);
          statusRequest = StatusRequest.success;
          update();
        }
      }

    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  buyItem(image, id) async {
    try {
      var logedData = await LocaleApi.getLoginData();
      if(logedData != null){
        Map itemData = {
          'email': logedData['email'],
          'id': id.toString(),
        };
        var update = await requests.postData(itemData, ApiLinks.buyShoppingItems);
        print(update);
        if(StatusRequest.serverFailure == update){
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
              "Server Error !!",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
          );
        } else {
          if(update['message'] == "data_null"){
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
                "Server Error !!",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
            );
          } else if(update['message'] == "no_balance"){
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
                "Insufficient Points !!",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
            );
            await getItems();
            await updatePoints();
          } else if(update['message'] == "success"){
            Map loginData = {
              'email': logedData['email'],
              'username': logedData['username'],
              'type': logedData['type'],
              'status': logedData['status'],
              'image': image.toString()
            };
            var saveLogin = await LocaleApi.saveLoginData(loginData);
            if(saveLogin){
              Get.defaultDialog(
                backgroundColor: white,
                title: "Success",
                titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
                titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: green,
                  fontWeight: FontWeight.bold
                ),
                content: Text(
                  "Purchased Successfully..",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                ),
              );
              await getItems();
              await updatePoints();
            }
          } else {
            statusRequest = StatusRequest.failure;
            update();
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
                "Server Error !!",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
            );
          }
        }
      }
      update();
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void onInit() async {
    await checkNetwork();
    await updatePoints();
    getItems();
    super.onInit();
  }

}