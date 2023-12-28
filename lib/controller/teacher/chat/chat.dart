import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../app_links.dart';
import '../../../core/class/statusrequest.dart';
import '../../../core/data/remote/requests.dart';
import '../../../helpers/helpers.dart';
import '../../../repo/api.dart';

abstract class TeacherChatStd extends GetxController {
  checkNetwork();
  getStdData();
  newMessage();
}
class TeacherChatStdImp extends TeacherChatStd {
  Requests requests = Requests(Get.find());
  CollectionReference messages = FirebaseFirestore.instance.collection(kMessages);
  DateFormat f = DateFormat('yyyy-MM-dd hh:mm');

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController content;

  bool isConnected = false;
  StatusRequest statusRequest = StatusRequest.none;

  String userEmail = "";
  String stdEmail = "";
  String stdName = "";
  String stdImage = "";
  List messagesList = [];

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  getStdData() async {
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

    var loginData  = await LocaleApi.getLoginData();

    if(loginData != null){
      Map req = {
        'user_email': loginData['email']
      };
      var auth = await requests.postData(req, ApiLinks.getStd);

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
            onWillPop: () async {
              Get.back();
              return false;
            }
        );
        statusRequest = StatusRequest.success;
        update();
      } else if(auth['message'] == "no_data_1"){
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
              "No Teacher Account Linked #1",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
            onWillPop: () async {
              Get.back();
              return false;
            }
        );
        statusRequest = StatusRequest.success;
        update();
      } else if(auth['message'] == "no_data_2"){
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
              "No Teacher Account Linked #2",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
            onWillPop: () async {
              Get.back();
              return false;
            }
        );
        statusRequest = StatusRequest.success;
        update();
      } else if(auth['message'] == "no_data_3"){
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
              "No Teacher Account Linked #3",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
            onWillPop: () async {
              Get.back();
              return false;
            }
        );
        statusRequest = StatusRequest.success;
        update();
      } else if(auth['message'] == "success"){
        statusRequest = StatusRequest.success;
        update();
        stdEmail = auth['result']['email'];
        stdName = auth['result']['username'];
        stdImage = auth['result']['image'];
        userEmail = loginData['email'];
        update();
      }
    }
  }

  @override
  newMessage() async {
    try {
      var formdata = formstate.currentState;
      if (formdata!.validate()) {
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
        messages.add({
          kMessageContent: content.text,
          kMessageUserEmail: userEmail,
          kMessageTo: stdEmail,
          kMessageCreatedAt: DateTime.now(),
        }).then((value){
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
              "Message Sent Successfully..",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
          );
          content.clear();
        }).catchError((error){
          print("Failed to submit message: $error");
        });
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void onInit() async {
    statusRequest = StatusRequest.none;
    await checkNetwork();
    await getStdData();
    content = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    content.dispose();
    super.dispose();
  }
}