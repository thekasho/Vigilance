import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../app_links.dart';
import '../../core/class/statusrequest.dart';
import '../../core/data/remote/requests.dart';
import '../../helpers/helpers.dart';

abstract class StdRegisterCont extends GetxController {
  checkNetwork();
  register();
}
class StdRegisterContImp extends StdRegisterCont {
  Requests requests = Requests(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController username;
  late TextEditingController pass;
  late TextEditingController cpass;

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
  register() async {
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
          'username': username.text,
          'email': email.text,
          'password': pass.text,
        };

        var auth = await requests.postData(loginData, ApiLinks.studentRegister);

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
          statusRequest = StatusRequest.failure;
          update();
        } else if(auth['message'] == "email_exsist"){
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
              "Email Already in use !!",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
          );
          statusRequest = StatusRequest.failure;
          update();
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
          statusRequest = StatusRequest.failure;
          update();
        } else if(auth['message'] == "failed"){
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
          statusRequest = StatusRequest.failure;
          update();
        } else if(auth['message'] == "success") {
          try {

            await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: email.text,
              password: pass.text,
            );

          } on FirebaseAuthException catch (x) {
            print(x);
          } catch (e) {
            print(e);
          }

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
              "Account Registered Success",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
            onWillPop: () async {
              Get.back();
              Get.back();
              return false;
            }
          );
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
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    username = TextEditingController();
    pass = TextEditingController();
    cpass = TextEditingController();
    checkNetwork();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    pass.dispose();
    cpass.dispose();
    super.dispose();
  }
}