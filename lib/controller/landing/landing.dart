import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:vig/helpers/helpers.dart';
import 'package:vig/repo/api.dart';

import '../../core/class/statusrequest.dart';

abstract class LandingCont extends GetxController {
  checkNetwork();
  checkAuth();
}

class LandingContImp extends LandingCont {
  bool isConnected = false;
  StatusRequest statusRequest = StatusRequest.none;

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  checkAuth() async {
    try {
      statusRequest = StatusRequest.loading;
      update();

      var loginData = await LocaleApi.getLoginData();

      if (loginData != null) {
        statusRequest = StatusRequest.success;
        update();

        if (loginData['type'] == 0) {
          Get.toNamed(screenStdHome);
        } else if (loginData['type'] == 2) {
          Get.toNamed(screenTchrHome);
        }
      } else {
        Get.offAllNamed(screenChooseType);
        statusRequest = StatusRequest.success;
        update();
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void onInit() {
    checkNetwork();
    super.onInit();
  }
}
