import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../app_links.dart';
import '../../core/class/statusrequest.dart';
import '../../core/data/remote/requests.dart';
import '../../helpers/helpers.dart';
import '../../repo/api.dart';

abstract class TchrHomeCont extends GetxController {
  checkNetwork();
  logOut();
}

class TchrHomeContImp extends TchrHomeCont {
  Requests requests = Requests(Get.find());

  bool isConnected = false;
  StatusRequest statusRequest = StatusRequest.none;

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  logOut() async {
    try {
      var loginData = await LocaleApi.getLoginData();
      if (loginData != null) {
        await LocaleApi.removeLoginData();
        Get.offAllNamed(screenChooseType);
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
