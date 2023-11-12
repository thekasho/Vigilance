import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../app_links.dart';
import '../../core/class/statusrequest.dart';
import '../../core/data/remote/requests.dart';
import '../../helpers/helpers.dart';
import '../../repo/api.dart';

abstract class StdHomeCont extends GetxController {
  checkNetwork();
  checkAuth();
}
class StdHomeContImp extends StdHomeCont {
  Requests requests = Requests(Get.find());

  bool isConnected = false;
  StatusRequest statusRequest = StatusRequest.none;

  String points = "0";

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  checkAuth() async {
    var loginData  = await LocaleApi.getLoginData();
    if(loginData != null){
      Map req = {
        'user_email': loginData['email']
      };

      var auth = await requests.postData(req, ApiLinks.getPoints);
      if(auth['message'] == "faild"){
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
      } else if(auth['message'] == "success"){
        points = auth['result'].toString();
        update();
      }
    }
  }

  @override
  void onInit() {
    statusRequest = StatusRequest.none;
    checkNetwork();
    super.onInit();
  }
}