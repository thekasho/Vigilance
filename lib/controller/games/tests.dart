import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../app_links.dart';
import '../../core/class/statusrequest.dart';
import '../../core/data/remote/requests.dart';
import '../../helpers/helpers.dart';
import '../../repo/api.dart';

abstract class TestsGameCont extends GetxController {
  checkNetwork();
  getCoinsLevel();
}
class TestsGameContImp extends TestsGameCont {
  Requests requests = Requests(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  bool isConnected = false;
  String email = "";
  int coinsLevel = 0;

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  getCoinsLevel() async {
    try {
      statusRequest = StatusRequest.loading;
      update();

      if(!isConnected){
        Get.defaultDialog(
          backgroundColor: white,
          title: "error".tr,
          titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
          titleStyle: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Cairo",
              color: red,
              fontWeight: FontWeight.bold
          ),
          content: Text(
            "no_internet".tr,
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

      var loginData = await LocaleApi.getLoginData();
      if(loginData != null){
        email = loginData['email'];
        Map levelRequest = {
          'user_email': loginData['email'],
        };
        var levelResponse = await requests.postData(levelRequest, ApiLinks.coinGameLevel);
        if(StatusRequest.serverFailure == levelResponse){
          Get.defaultDialog(
            backgroundColor: white,
            title: "error".tr,
            titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
            titleStyle: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Cairo",
              color: red,
              fontWeight: FontWeight.bold
            ),
            content: Text(
              "server_error".tr,
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
          );
        } else if (levelResponse['status'] == 200){
          coinsLevel = levelResponse['result'];
        }
        statusRequest = StatusRequest.success;
        update();
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void onInit() async {
    await checkNetwork();
    getCoinsLevel();
    super.onInit();
  }

}