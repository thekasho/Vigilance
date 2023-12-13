import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../core/class/statusrequest.dart';
import '../../core/data/remote/requests.dart';

abstract class TeacherTestsCont extends GetxController {
  checkNetwork();
}
class TeacherTestsContImp extends TeacherTestsCont {
  Requests requests = Requests(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController cont1;
  late TextEditingController cont2;
  late TextEditingController cont3;

  StatusRequest statusRequest = StatusRequest.none;

  bool isConnected = false;
  String email = "";

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  void onReady() async {
    await checkNetwork();
    cont1 = TextEditingController();
    cont2 = TextEditingController();
    cont3 = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    cont1.dispose();
    cont2.dispose();
    cont3.dispose();
    super.dispose();
  }
}