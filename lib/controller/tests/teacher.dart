import 'dart:convert';

import 'package:dartz/dartz_unsafe.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../app_links.dart';
import '../../core/class/statusrequest.dart';
import '../../core/data/remote/requests.dart';
import '../../helpers/helpers.dart';

abstract class TeacherTestsCont extends GetxController {
  checkNetwork();
  saveQst();
}
class TeacherTestsContImp extends TeacherTestsCont {
  Requests requests = Requests(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  List qst = [];

  late TextEditingController cont1;
  late TextEditingController cont2;
  late TextEditingController cont3;
  late TextEditingController cont4;
  late TextEditingController cont5;
  int selectedAns1 = 1;

  late TextEditingController cont6;
  late TextEditingController cont7;
  late TextEditingController cont8;
  late TextEditingController cont9;
  late TextEditingController cont10;
  int selectedAns2 = 0;

  late TextEditingController cont11;
  late TextEditingController cont12;
  late TextEditingController cont13;
  late TextEditingController cont14;
  late TextEditingController cont15;
  int selectedAns3 = 0;

  late TextEditingController cont16;
  late TextEditingController cont17;
  late TextEditingController cont18;
  late TextEditingController cont19;
  late TextEditingController cont20;
  int selectedAns4 = 0;

  late TextEditingController cont21;
  late TextEditingController cont22;
  late TextEditingController cont23;
  late TextEditingController cont24;
  late TextEditingController cont25;
  int selectedAns5 = 0;

  bool validator2 = false;
  bool validator3 = false;
  bool validator4 = false;
  bool validator5 = false;

  StatusRequest statusRequest = StatusRequest.none;

  bool isConnected = false;
  String email = "";

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
    statusRequest = StatusRequest.success;
    update();
  }

  @override
  saveQst() async {
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
        qst.clear();

        Map qst1 = {
          "qst1": {
            'qstTitle': cont1.text,
            'qstOpt1': cont2.text,
            'qstOpt2': cont3.text,
            'qstOpt3': cont4.text,
            'qstOpt4': cont4.text,
            'rightAns': selectedAns1,
          }
        };
        qst.add(qst1);

        Map qst2 = {
          "qst2": {
            'qstTitle': cont6.text,
            'qstOpt1': cont7.text,
            'qstOpt2': cont8.text,
            'qstOpt3': cont9.text,
            'qstOpt4': cont10.text,
            'rightAns': selectedAns2,
          }
        };
        if(selectedAns2 >= 1 || cont6.text.isNotEmpty || cont7.text.isNotEmpty || cont8.text.isNotEmpty || cont9.text.isNotEmpty || cont10.text.isNotEmpty) {
          if(selectedAns2 >= 1 && (cont6.text.isNotEmpty && cont7.text.isNotEmpty && cont8.text.isNotEmpty && cont9.text.isNotEmpty && cont10.text.isNotEmpty)) {
            validator2 = true;
            qst.add(qst2);
          } else {
            validator2 = false;
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
                "Question 2 Invalid!",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
              onWillPop: () async {
                return true;
              }
            );
          }
        } else {
          validator2 = true;
        }

        Map qst3 = {
          "qst3": {
            'qstTitle': cont11.text,
            'qstOpt1': cont12.text,
            'qstOpt2': cont13.text,
            'qstOpt3': cont14.text,
            'qstOpt4': cont15.text,
            'rightAns': selectedAns3,
          }
        };
        if(selectedAns3 >= 1 || cont11.text.isNotEmpty || cont12.text.isNotEmpty || cont13.text.isNotEmpty || cont14.text.isNotEmpty || cont15.text.isNotEmpty) {
          if(selectedAns3 >= 1 && cont11.text.isNotEmpty && cont12.text.isNotEmpty && cont13.text.isNotEmpty && cont14.text.isNotEmpty && cont15.text.isNotEmpty) {
            validator3 = true;
            qst.add(qst3);
          } else {
            validator3 = false;
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
                  "Question 3 Invalid!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                ),
                onWillPop: () async {
                  return true;
                }
            );
          }
        } else {
          validator3 = true;
        }

        Map qst4 = {
          "qst4": {
            'qstTitle': cont16.text,
            'qstOpt1': cont17.text,
            'qstOpt2': cont18.text,
            'qstOpt3': cont19.text,
            'qstOpt4': cont20.text,
            'rightAns': selectedAns4,
          }
        };
        if(selectedAns4 >= 1 || cont16.text.isNotEmpty || cont17.text.isNotEmpty || cont18.text.isNotEmpty || cont19.text.isNotEmpty || cont20.text.isNotEmpty) {
          if(selectedAns4 >= 1 && cont16.text.isNotEmpty && cont17.text.isNotEmpty && cont18.text.isNotEmpty && cont19.text.isNotEmpty && cont20.text.isNotEmpty) {
            validator4 = true;
            qst.add(qst4);
          } else {
            validator4 = false;
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
                  "Question 3 Invalid!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                ),
                onWillPop: () async {
                  return true;
                }
            );
          }
        } else {
          validator4 = true;
        }

        Map qst5 = {
          "qst5": {
            'qstTitle': cont21.text,
            'qstOpt1': cont22.text,
            'qstOpt2': cont23.text,
            'qstOpt3': cont24.text,
            'qstOpt4': cont25.text,
            'rightAns': selectedAns5,
          }
        };
        if(selectedAns5 >= 1 || cont21.text.isNotEmpty || cont22.text.isNotEmpty || cont23.text.isNotEmpty || cont24.text.isNotEmpty || cont25.text.isNotEmpty) {
          if(selectedAns5 >= 1 && cont21.text.isNotEmpty && cont22.text.isNotEmpty && cont23.text.isNotEmpty && cont24.text.isNotEmpty && cont25.text.isNotEmpty) {
            validator5 = true;
            qst.add(qst5);
          } else {
            validator5 = false;
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
                  "Question 3 Invalid!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                ),
                onWillPop: () async {
                  return true;
                }
            );
          }
        } else {
          validator5 = true;
        }
        if(validator2 == true && validator3 == true && validator4 == true && validator5 == true){
          Map answ = {};
          for(int i = 0; i<qst.length; i++){
            answ.addAll(qst[i]);
          }
          Map testData = {
            "qsts": json.encode(answ),
          };
          var save = await requests.postData(testData, ApiLinks.addTest);

          if(StatusRequest.serverFailure == save){
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
            if (save['message'] == "success") {
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
                  "Tests Added",
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
            } else if (save['message'] == "data_null"){
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
                onWillPop: () async {
                  Get.back();
                  Get.back();
                  return false;
                }
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
  void onInit() async {
    await checkNetwork();
    cont1 = TextEditingController();
    cont2 = TextEditingController();
    cont3 = TextEditingController();
    cont4 = TextEditingController();
    cont5 = TextEditingController();

    cont6 = TextEditingController();
    cont7 = TextEditingController();
    cont8 = TextEditingController();
    cont9 = TextEditingController();
    cont10 = TextEditingController();

    cont11 = TextEditingController();
    cont12 = TextEditingController();
    cont13 = TextEditingController();
    cont14 = TextEditingController();
    cont15 = TextEditingController();

    cont16 = TextEditingController();
    cont17 = TextEditingController();
    cont18 = TextEditingController();
    cont19 = TextEditingController();
    cont20 = TextEditingController();

    cont21 = TextEditingController();
    cont22 = TextEditingController();
    cont23 = TextEditingController();
    cont24 = TextEditingController();
    cont25 = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    cont1.dispose();
    cont2.dispose();
    cont3.dispose();
    cont4.dispose();
    cont5.dispose();

    cont6.dispose();
    cont7.dispose();
    cont8.dispose();
    cont9.dispose();
    cont10.dispose();

    cont11.dispose();
    cont12.dispose();
    cont13.dispose();
    cont14.dispose();
    cont15.dispose();

    cont16.dispose();
    cont17.dispose();
    cont18.dispose();
    cont19.dispose();
    cont20.dispose();

    cont21.dispose();
    cont22.dispose();
    cont23.dispose();
    cont24.dispose();
    cont25.dispose();

    super.dispose();
  }
}