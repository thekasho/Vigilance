import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vig/core/data/remote/requests.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:vig/repo/api.dart';

import '../../app_links.dart';
import '../../core/class/statusrequest.dart';
import '../../helpers/helpers.dart';

abstract class StdLoginCont extends GetxController {
  checkNetwork();
  login();
}
class StdLoginContImp extends StdLoginCont {
  Requests requests = Requests(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController pass;

  StatusRequest statusRequest = StatusRequest.none;

  bool isShowPassword = true;
  bool isConnected = false;

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  login() async {
    try {
      var formdata = formstate.currentState;
      if (formdata!.validate()) {
        statusRequest = StatusRequest.loading;
        update();

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

        Map loginData = {
          'email': email.text,
          'password': pass.text
        };

        var auth = await requests.postData(loginData, ApiLinks.login);

        if(StatusRequest.serverFailure == auth){
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
        } else if(auth['message'] == "password_wrong"){
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
              "Password Incorrect !!",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
          );
        } else if(auth['message'] == "not_exsist"){
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
              "Email Not Registered !!",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
          );
        } else if(auth['message'] == "data_null"){
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
          if(auth['result']['status'] == 0){
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
                "Account Not Active !!",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
            );
          } else {
            Map loginData = {
              'email': email.text,
              'username': auth['result']['username'],
              'type': auth['result']['type'],
              'status': auth['result']['status'],
            };
            var saveLogin = await LocaleApi.saveLoginData(loginData);
            if(saveLogin){
              Get.offAllNamed(screenStdHome);
            } else {
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

      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    pass = TextEditingController();
    checkNetwork();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    pass.dispose();
    super.dispose();
  }

}