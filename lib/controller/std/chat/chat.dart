import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:win32/win32.dart';

import '../../../app_links.dart';
import '../../../core/class/statusrequest.dart';
import '../../../core/data/remote/requests.dart';
import '../../../helpers/helpers.dart';
import '../../../repo/api.dart';

abstract class StdChatTeacher extends GetxController {
  checkNetwork();
  getTeacherData();
  getMessages();
}
class StdChatTeacherImp extends StdChatTeacher {
  Requests requests = Requests(Get.find());

  bool isConnected = false;
  StatusRequest statusRequest = StatusRequest.none;

  String userEmail = "";
  String teacherEmail = "";
  String teacherName = "";
  String teacherImage = "";
  List messagesList = [];

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  getTeacherData() async {
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

      var auth = await requests.postData(req, ApiLinks.getTeacher);

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
        teacherEmail = auth['result']['email'];
        teacherName = auth['result']['username'];
        teacherImage = auth['result']['image'];
        userEmail = loginData['email'];
        update();
      }
    }
  }

  @override
  getMessages() async {

    // CollectionReference messages = FirebaseFirestore.instance.collection(kMessages);
    // final mess = await messages.doc('user_name').get();
    // Map data = mess.data() as Map;
    // print(data);

    // QuerySnapshot value = await FirebaseFirestore.instance.collection(kMessages).get();
    // print(value);
    //
    // QuerySnapshot<Map<String, dynamic>> data = await FirebaseFirestore.instance.collection('object').get();
    // List objList = data.docs.map((data) => data['user_name'].toList();

  }


  @override
  void onReady() async {
    statusRequest = StatusRequest.none;
    await checkNetwork();
    await getTeacherData();
  }

  // @override
  // void onInit() {
  //   statusRequest = StatusRequest.none;
  //   checkNetwork();
  //   checkAuth();
  //   super.onInit();
  // }
}