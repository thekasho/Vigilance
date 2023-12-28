import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../app_links.dart';
import '../../core/class/statusrequest.dart';
import '../../core/data/remote/requests.dart';
import '../../helpers/helpers.dart';
import '../../repo/api.dart';

abstract class TeacherTestsCont extends GetxController {
  checkNetwork();
  saveQst();
  getTests();
  getTestQsts(int id);
  updateQst();
  deleteTest(int id);
}
class TeacherTestsContImp extends TeacherTestsCont {
  Requests requests = Requests(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  GlobalKey<FormState> eformstate = GlobalKey<FormState>();

  // add Test Options
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

  late TextEditingController cont26;
  late TextEditingController cont27;
  late TextEditingController cont28;
  late TextEditingController cont29;
  late TextEditingController cont30;
  int selectedAns6 = 0;

  late TextEditingController cont31;
  late TextEditingController cont32;
  late TextEditingController cont33;
  late TextEditingController cont34;
  late TextEditingController cont35;
  int selectedAns7 = 0;

  late TextEditingController cont36;
  late TextEditingController cont37;
  late TextEditingController cont38;
  late TextEditingController cont39;
  late TextEditingController cont40;
  int selectedAns8 = 0;

  late TextEditingController cont41;
  late TextEditingController cont42;
  late TextEditingController cont43;
  late TextEditingController cont44;
  late TextEditingController cont45;
  int selectedAns9 = 0;

  late TextEditingController cont46;
  late TextEditingController cont47;
  late TextEditingController cont48;
  late TextEditingController cont49;
  late TextEditingController cont50;
  int selectedAns10 = 0;

  bool validator2 = false;
  bool validator3 = false;
  bool validator4 = false;
  bool validator5 = false;
  bool validator6 = false;
  bool validator7 = false;
  bool validator8 = false;
  bool validator9 = false;
  bool validator10 = false;

  // view Test Options
  List eqst = [];

  late TextEditingController econt1;
  late TextEditingController econt2;
  late TextEditingController econt3;
  late TextEditingController econt4;
  late TextEditingController econt5;
  int eselectedAns1 = 1;

  late TextEditingController econt6;
  late TextEditingController econt7;
  late TextEditingController econt8;
  late TextEditingController econt9;
  late TextEditingController econt10;
  int eselectedAns2 = 0;

  late TextEditingController econt11;
  late TextEditingController econt12;
  late TextEditingController econt13;
  late TextEditingController econt14;
  late TextEditingController econt15;
  int eselectedAns3 = 0;

  late TextEditingController econt16;
  late TextEditingController econt17;
  late TextEditingController econt18;
  late TextEditingController econt19;
  late TextEditingController econt20;
  int eselectedAns4 = 0;

  late TextEditingController econt21;
  late TextEditingController econt22;
  late TextEditingController econt23;
  late TextEditingController econt24;
  late TextEditingController econt25;
  int eselectedAns5 = 0;

  late TextEditingController econt26;
  late TextEditingController econt27;
  late TextEditingController econt28;
  late TextEditingController econt29;
  late TextEditingController econt30;
  int eselectedAns6 = 0;

  late TextEditingController econt31;
  late TextEditingController econt32;
  late TextEditingController econt33;
  late TextEditingController econt34;
  late TextEditingController econt35;
  int eselectedAns7 = 0;

  late TextEditingController econt36;
  late TextEditingController econt37;
  late TextEditingController econt38;
  late TextEditingController econt39;
  late TextEditingController econt40;
  int eselectedAns8 = 0;

  late TextEditingController econt41;
  late TextEditingController econt42;
  late TextEditingController econt43;
  late TextEditingController econt44;
  late TextEditingController econt45;
  int eselectedAns9 = 0;

  late TextEditingController econt46;
  late TextEditingController econt47;
  late TextEditingController econt48;
  late TextEditingController econt49;
  late TextEditingController econt50;
  int eselectedAns10 = 0;

  bool evalidator2 = false;
  bool evalidator3 = false;
  bool evalidator4 = false;
  bool evalidator5 = false;
  bool evalidator6 = false;
  bool evalidator7 = false;
  bool evalidator8 = false;
  bool evalidator9 = false;
  bool evalidator10 = false;

  StatusRequest statusRequest = StatusRequest.none;

  bool isConnected = false;
  String email = "";
  List tests = [];

  List enqst = [];
  int main1 = 0;
  int id1 = 0;
  int id2 = 0;
  int id3 = 0;
  int id4 = 0;
  int id5 = 0;
  int id6 = 0;
  int id7 = 0;
  int id8 = 0;
  int id9 = 0;
  int id10 = 0;

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
                "Question 4 Invalid!",
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
                "Question 5 Invalid!",
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

        Map qst6 = {
          "qst6": {
            'qstTitle': cont26.text,
            'qstOpt1': cont27.text,
            'qstOpt2': cont29.text,
            'qstOpt3': cont29.text,
            'qstOpt4': cont30.text,
            'rightAns': selectedAns6,
          }
        };
        if(selectedAns6 >= 1 || cont26.text.isNotEmpty || cont27.text.isNotEmpty || cont28.text.isNotEmpty || cont29.text.isNotEmpty || cont30.text.isNotEmpty) {
          if(selectedAns6 >= 1 && cont26.text.isNotEmpty && cont27.text.isNotEmpty && cont28.text.isNotEmpty && cont29.text.isNotEmpty && cont30.text.isNotEmpty) {
            validator6 = true;
            qst.add(qst6);
          } else {
            validator6 = false;
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
                "Question 6 Invalid!",
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
          validator6 = true;
        }

        Map qst7 = {
          "qst7": {
            'qstTitle': cont31.text,
            'qstOpt1': cont32.text,
            'qstOpt2': cont33.text,
            'qstOpt3': cont34.text,
            'qstOpt4': cont35.text,
            'rightAns': selectedAns7,
          }
        };
        if(selectedAns7 >= 1 || cont31.text.isNotEmpty || cont32.text.isNotEmpty || cont33.text.isNotEmpty || cont34.text.isNotEmpty || cont35.text.isNotEmpty) {
          if(selectedAns7 >= 1 && cont31.text.isNotEmpty && cont32.text.isNotEmpty && cont33.text.isNotEmpty && cont34.text.isNotEmpty && cont35.text.isNotEmpty) {
            validator7 = true;
            qst.add(qst7);
          } else {
            validator7 = false;
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
                "Question 7 Invalid!",
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
          validator7 = true;
        }

        Map qst8 = {
          "qst8": {
            'qstTitle': cont36.text,
            'qstOpt1': cont37.text,
            'qstOpt2': cont38.text,
            'qstOpt3': cont39.text,
            'qstOpt4': cont40.text,
            'rightAns': selectedAns8,
          }
        };
        if(selectedAns8 >= 1 || cont36.text.isNotEmpty || cont37.text.isNotEmpty || cont38.text.isNotEmpty || cont39.text.isNotEmpty || cont40.text.isNotEmpty) {
          if(selectedAns8 >= 1 && cont36.text.isNotEmpty && cont37.text.isNotEmpty && cont38.text.isNotEmpty && cont39.text.isNotEmpty && cont40.text.isNotEmpty) {
            validator8 = true;
            qst.add(qst8);
          } else {
            validator8 = false;
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
                "Question 8 Invalid!",
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
          validator8 = true;
        }

        Map qst9 = {
          "qst9": {
            'qstTitle': cont41.text,
            'qstOpt1': cont42.text,
            'qstOpt2': cont43.text,
            'qstOpt3': cont44.text,
            'qstOpt4': cont45.text,
            'rightAns': selectedAns9,
          }
        };
        if(selectedAns9 >= 1 || cont41.text.isNotEmpty || cont42.text.isNotEmpty || cont43.text.isNotEmpty || cont44.text.isNotEmpty || cont45.text.isNotEmpty) {
          if(selectedAns9 >= 1 && cont41.text.isNotEmpty && cont42.text.isNotEmpty && cont43.text.isNotEmpty && cont44.text.isNotEmpty && cont45.text.isNotEmpty) {
            validator9 = true;
            qst.add(qst9);
          } else {
            validator9 = false;
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
                "Question 9 Invalid!",
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
          validator9 = true;
        }

        Map qst10 = {
          "qst10": {
            'qstTitle': cont46.text,
            'qstOpt1': cont47.text,
            'qstOpt2': cont48.text,
            'qstOpt3': cont49.text,
            'qstOpt4': cont50.text,
            'rightAns': selectedAns10,
          }
        };
        if(selectedAns10 >= 1 || cont46.text.isNotEmpty || cont47.text.isNotEmpty || cont48.text.isNotEmpty || cont49.text.isNotEmpty || cont50.text.isNotEmpty) {
          if(selectedAns10 >= 1 && cont46.text.isNotEmpty && cont47.text.isNotEmpty && cont48.text.isNotEmpty && cont49.text.isNotEmpty && cont50.text.isNotEmpty) {
            validator10 = true;
            qst.add(qst10);
          } else {
            validator10 = false;
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
                "Question 10 Invalid!",
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
          validator10 = true;
        }

        if(validator2 == true && validator3 == true && validator4 == true && validator5 == true && validator6 == true && validator7 == true && validator8 == true &&
           validator9 == true && validator10 == true
          ){
          Map answ = {};
          for(int i = 0; i<qst.length; i++){
            answ.addAll(qst[i]);
          }
          Map testData = {
            "qsts": json.encode(answ),
            'creator_email': email
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
  getTests() async {
    try {
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

      var loginData = await LocaleApi.getLoginData();

      if(loginData != null) {
        email = loginData['email'];

        Map taskRequest = {
          'user_email': loginData['email'],
        };
        var testsResponse = await requests.postData(taskRequest, ApiLinks.getTest);
        if(testsResponse['statue'] == "success" && testsResponse['result'].length >= 1){
          tests = [];
          tests.addAll(testsResponse['result']);
          statusRequest = StatusRequest.success;
          update();
        }
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  getTestQsts(id) async {
    try {
      if (!isConnected) {
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
      Map taskRequest = {
        'id': id.toString(),
      };
      var testsResponse = await requests.postData(
          taskRequest, ApiLinks.viewTest);
      if (testsResponse['statue'] == "success" &&
          testsResponse['result'].length >= 1) {
        eqst = [];
        eqst.addAll(testsResponse['result']);
      }

      if (eqst.length >= 1) {
        econt1 = TextEditingController(text: eqst[0]['title'] ?? "");
        econt2 = TextEditingController(text: eqst[0]['option_1'] ?? "");
        econt3 = TextEditingController(text: eqst[0]['option_2'] ?? "");
        econt4 = TextEditingController(text: eqst[0]['option_3'] ?? "");
        econt5 = TextEditingController(text: eqst[0]['option_4'] ?? "");
        eselectedAns1 = eqst[0]['answer'] ?? 0;
        id1 = eqst[0]['id'] ?? 0;
        main1 = eqst[0]['main'] ?? 0;
      }

      if (eqst.length >= 2) {
        econt6 = TextEditingController(text: eqst[1]['title'] ?? "");
        econt7 = TextEditingController(text: eqst[1]['option_1'] ?? "");
        econt8 = TextEditingController(text: eqst[1]['option_2'] ?? "");
        econt9 = TextEditingController(text: eqst[1]['option_3'] ?? "");
        econt10 = TextEditingController(text: eqst[1]['option_4'] ?? "");
        eselectedAns2 = eqst[1]['answer'] ?? 0;
        id2 = eqst[1]['id'] ?? 0;
      }

      if (eqst.length >= 3) {
        econt11 = TextEditingController(text: eqst[2]['title'] ?? "");
        econt12 = TextEditingController(text: eqst[2]['option_1'] ?? "");
        econt13 = TextEditingController(text: eqst[2]['option_2'] ?? "");
        econt14 = TextEditingController(text: eqst[2]['option_3'] ?? "");
        econt15 = TextEditingController(text: eqst[2]['option_4'] ?? "");
        eselectedAns3 = eqst[2]['answer'] ?? 0;
        id3 = eqst[2]['id'] ?? 0;
      }

      if (eqst.length >= 4) {
        econt16 = TextEditingController(text: eqst[3]['title'] ?? "");
        econt17 = TextEditingController(text: eqst[3]['option_1'] ?? "");
        econt18 = TextEditingController(text: eqst[3]['option_2'] ?? "");
        econt19 = TextEditingController(text: eqst[3]['option_3'] ?? "");
        econt20 = TextEditingController(text: eqst[3]['option_4'] ?? "");
        eselectedAns4 = eqst[3]['answer'] ?? 0;
        id4 = eqst[3]['id'] ?? 0;
      }

      if (eqst.length >= 5) {
        econt21 = TextEditingController(text: eqst[4]['title'] ?? "");
        econt22 = TextEditingController(text: eqst[4]['option_1'] ?? "");
        econt23 = TextEditingController(text: eqst[4]['option_2'] ?? "");
        econt24 = TextEditingController(text: eqst[4]['option_3'] ?? "");
        econt25 = TextEditingController(text: eqst[4]['option_4'] ?? "");
        eselectedAns5 = eqst[4]['answer'] ?? 0;
        id5 = eqst[4]['id'] ?? 0;
      }

      if (eqst.length >= 6) {
        econt26 = TextEditingController(text: eqst[5]['title'] ?? "");
        econt27 = TextEditingController(text: eqst[5]['option_1'] ?? "");
        econt28 = TextEditingController(text: eqst[5]['option_2'] ?? "");
        econt29 = TextEditingController(text: eqst[5]['option_3'] ?? "");
        econt30 = TextEditingController(text: eqst[5]['option_4'] ?? "");
        eselectedAns6 = eqst[5]['answer'] ?? 0;
        id6 = eqst[5]['id'] ?? 0;
      }

      if (eqst.length >= 7) {
        econt31 = TextEditingController(text: eqst[6]['title'] ?? "");
        econt32 = TextEditingController(text: eqst[6]['option_1'] ?? "");
        econt33 = TextEditingController(text: eqst[6]['option_2'] ?? "");
        econt34 = TextEditingController(text: eqst[6]['option_3'] ?? "");
        econt35 = TextEditingController(text: eqst[6]['option_4'] ?? "");
        eselectedAns7 = eqst[6]['answer'] ?? 0;
        id7 = eqst[6]['id'] ?? 0;
      }

      if (eqst.length >= 8) {
        econt36 = TextEditingController(text: eqst[7]['title'] ?? "");
        econt37 = TextEditingController(text: eqst[7]['option_1'] ?? "");
        econt38 = TextEditingController(text: eqst[7]['option_2'] ?? "");
        econt39 = TextEditingController(text: eqst[7]['option_3'] ?? "");
        econt40 = TextEditingController(text: eqst[7]['option_4'] ?? "");
        eselectedAns8 = eqst[7]['answer'] ?? 0;
        id8 = eqst[7]['id'] ?? 0;
      }

      if (eqst.length >= 9) {
        econt41 = TextEditingController(text: eqst[8]['title'] ?? "");
        econt42 = TextEditingController(text: eqst[8]['option_1'] ?? "");
        econt43 = TextEditingController(text: eqst[8]['option_2'] ?? "");
        econt44 = TextEditingController(text: eqst[8]['option_3'] ?? "");
        econt45 = TextEditingController(text: eqst[8]['option_4'] ?? "");
        eselectedAns9 = eqst[8]['answer'] ?? 0;
        id9 = eqst[8]['id'] ?? 0;
      }

      if (eqst.length >= 10) {
        econt46 = TextEditingController(text: eqst[9]['title'] ?? "");
        econt47 = TextEditingController(text: eqst[9]['option_1'] ?? "");
        econt48 = TextEditingController(text: eqst[9]['option_2'] ?? "");
        econt49 = TextEditingController(text: eqst[9]['option_3'] ?? "");
        econt50 = TextEditingController(text: eqst[9]['option_4'] ?? "");
        eselectedAns10 = eqst[9]['answer'] ?? 0;
        id10 = eqst[9]['id'] ?? 0;
      }
      update();
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  updateQst() async {
    try {
      var formdata = eformstate.currentState;
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

        enqst.clear();
        Map eqst1 = {
          "eqst1": {
            'qstId': id1,
            'qstTitle': econt1.text,
            'qstOpt1': econt2.text,
            'qstOpt2': econt3.text,
            'qstOpt3': econt4.text,
            'qstOpt4': econt4.text,
            'rightAns': eselectedAns1,
          }
        };
        enqst.add(eqst1);

        Map eqst2 = {
          "eqst2": {
            'qstId': id2,
            'qstTitle': econt6.text,
            'qstOpt1': econt7.text,
            'qstOpt2': econt8.text,
            'qstOpt3': econt9.text,
            'qstOpt4': econt10.text,
            'rightAns': eselectedAns2,
          }
        };
        if(eselectedAns2 >= 1 || econt6.text.isNotEmpty || econt7.text.isNotEmpty || econt8.text.isNotEmpty || econt9.text.isNotEmpty || econt10.text.isNotEmpty) {
          if(eselectedAns2 >= 1 && (econt6.text.isNotEmpty && econt7.text.isNotEmpty && econt8.text.isNotEmpty && econt9.text.isNotEmpty && econt10.text.isNotEmpty)) {
            evalidator2 = true;
            enqst.add(eqst2);
          } else {
            evalidator2 = false;
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
          evalidator2 = true;
        }

        Map eqst3 = {
          "eqst3": {
            'qstId': id3,
            'qstTitle': econt11.text,
            'qstOpt1': econt12.text,
            'qstOpt2': econt13.text,
            'qstOpt3': econt14.text,
            'qstOpt4': econt15.text,
            'rightAns': eselectedAns3,
          }
        };
        if(eselectedAns3 >= 1 || econt11.text.isNotEmpty || econt12.text.isNotEmpty || econt13.text.isNotEmpty || econt14.text.isNotEmpty || econt15.text.isNotEmpty) {
          if(eselectedAns3 >= 1 && econt11.text.isNotEmpty && econt12.text.isNotEmpty && econt13.text.isNotEmpty && econt14.text.isNotEmpty && econt15.text.isNotEmpty) {
            evalidator3 = true;
            enqst.add(eqst3);
          } else {
            evalidator3 = false;
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
          evalidator3 = true;
        }

        Map eqst4 = {
          "eqst4": {
            'qstId': id4,
            'qstTitle': econt16.text,
            'qstOpt1': econt17.text,
            'qstOpt2': econt18.text,
            'qstOpt3': econt19.text,
            'qstOpt4': econt20.text,
            'rightAns': eselectedAns4,
          }
        };
        if(eselectedAns4 >= 1 || econt16.text.isNotEmpty || econt17.text.isNotEmpty || econt18.text.isNotEmpty || econt19.text.isNotEmpty || econt20.text.isNotEmpty) {
          if(eselectedAns4 >= 1 && econt16.text.isNotEmpty && econt17.text.isNotEmpty && econt18.text.isNotEmpty && econt19.text.isNotEmpty && econt20.text.isNotEmpty) {
            evalidator4 = true;
            enqst.add(eqst4);
          } else {
            evalidator4 = false;
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
                  "Question 4 Invalid!",
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
          evalidator4 = true;
        }

        Map eqst5 = {
          "eqst5": {
            'qstId': id5,
            'qstTitle': econt21.text,
            'qstOpt1': econt22.text,
            'qstOpt2': econt23.text,
            'qstOpt3': econt24.text,
            'qstOpt4': econt25.text,
            'rightAns': eselectedAns5,
          }
        };
        if(eselectedAns5 >= 1 || econt21.text.isNotEmpty || econt22.text.isNotEmpty || econt23.text.isNotEmpty || econt24.text.isNotEmpty || econt25.text.isNotEmpty) {
          if(eselectedAns5 >= 1 && econt21.text.isNotEmpty && econt22.text.isNotEmpty && econt23.text.isNotEmpty && econt24.text.isNotEmpty && econt25.text.isNotEmpty) {
            evalidator5 = true;
            enqst.add(eqst5);
          } else {
            evalidator5 = false;
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
                  "Question 5 Invalid!",
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
          evalidator5 = true;
        }

        Map eqst6 = {
          "eqst6": {
            'qstId': id6,
            'qstTitle': econt26.text,
            'qstOpt1': econt27.text,
            'qstOpt2': econt29.text,
            'qstOpt3': econt29.text,
            'qstOpt4': econt30.text,
            'rightAns': eselectedAns6,
          }
        };
        if(eselectedAns6 >= 1 || econt26.text.isNotEmpty || econt27.text.isNotEmpty || econt28.text.isNotEmpty || econt29.text.isNotEmpty || econt30.text.isNotEmpty) {
          if(eselectedAns6 >= 1 && econt26.text.isNotEmpty && econt27.text.isNotEmpty && econt28.text.isNotEmpty && econt29.text.isNotEmpty && econt30.text.isNotEmpty) {
            evalidator6 = true;
            enqst.add(eqst6);
          } else {
            evalidator6 = false;
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
                  "Question 6 Invalid!",
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
          evalidator6 = true;
        }

        Map eqst7 = {
          "eqst7": {
            'qstId': id7,
            'qstTitle': econt31.text,
            'qstOpt1': econt32.text,
            'qstOpt2': econt33.text,
            'qstOpt3': econt34.text,
            'qstOpt4': econt35.text,
            'rightAns': eselectedAns7,
          }
        };
        if(eselectedAns7 >= 1 || econt31.text.isNotEmpty || econt32.text.isNotEmpty || econt33.text.isNotEmpty || econt34.text.isNotEmpty || econt35.text.isNotEmpty) {
          if(eselectedAns7 >= 1 && econt31.text.isNotEmpty && econt32.text.isNotEmpty && econt33.text.isNotEmpty && econt34.text.isNotEmpty && econt35.text.isNotEmpty) {
            evalidator7 = true;
            enqst.add(eqst7);
          } else {
            evalidator7 = false;
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
                "Question 7 Invalid!",
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
          evalidator7 = true;
        }

        Map eqst8 = {
          "eqst8": {
            'qstId': id8,
            'qstTitle': econt36.text,
            'qstOpt1': econt37.text,
            'qstOpt2': econt38.text,
            'qstOpt3': econt39.text,
            'qstOpt4': econt40.text,
            'rightAns': eselectedAns8,
          }
        };
        if(eselectedAns8 >= 1 || econt36.text.isNotEmpty || econt37.text.isNotEmpty || econt38.text.isNotEmpty || econt39.text.isNotEmpty || econt40.text.isNotEmpty) {
          if(eselectedAns8 >= 1 && econt36.text.isNotEmpty && econt37.text.isNotEmpty && econt38.text.isNotEmpty && econt39.text.isNotEmpty && econt40.text.isNotEmpty) {
            evalidator8 = true;
            enqst.add(eqst8);
          } else {
            evalidator8 = false;
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
                "Question 8 Invalid!",
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
          evalidator8 = true;
        }

        Map eqst9 = {
          "eqst9": {
            'qstId': id9,
            'qstTitle': econt41.text,
            'qstOpt1': econt42.text,
            'qstOpt2': econt43.text,
            'qstOpt3': econt44.text,
            'qstOpt4': econt45.text,
            'rightAns': eselectedAns9,
          }
        };
        if(eselectedAns9 >= 1 || econt41.text.isNotEmpty || econt42.text.isNotEmpty || econt43.text.isNotEmpty || econt44.text.isNotEmpty || econt45.text.isNotEmpty) {
          if(eselectedAns9 >= 1 && econt41.text.isNotEmpty && econt42.text.isNotEmpty && econt43.text.isNotEmpty && econt44.text.isNotEmpty && econt45.text.isNotEmpty) {
            evalidator9 = true;
            enqst.add(eqst9);
          } else {
            evalidator9 = false;
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
                "Question 9 Invalid!",
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
          evalidator9 = true;
        }

        Map eqst10 = {
          "eqst10": {
            'qstId': id10,
            'qstTitle': econt46.text,
            'qstOpt1': econt47.text,
            'qstOpt2': econt48.text,
            'qstOpt3': econt49.text,
            'qstOpt4': econt50.text,
            'rightAns': eselectedAns10,
          }
        };
        if(eselectedAns10 >= 1 || econt46.text.isNotEmpty || econt47.text.isNotEmpty || econt48.text.isNotEmpty || econt49.text.isNotEmpty || econt50.text.isNotEmpty) {
          if(eselectedAns10 >= 1 && econt46.text.isNotEmpty && econt47.text.isNotEmpty && econt48.text.isNotEmpty && econt49.text.isNotEmpty && econt50.text.isNotEmpty) {
            evalidator10 = true;
            enqst.add(eqst10);
          } else {
            evalidator10 = false;
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
                "Question 10 Invalid!",
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
          evalidator10 = true;
        }

        if(evalidator2 == true && evalidator3 == true && evalidator4 == true && evalidator5 == true && evalidator6 == true && evalidator7 == true && evalidator8 == true &&
            evalidator9 == true && evalidator10 == true){
          Map eansw = {};
          for(int i = 0; i<enqst.length; i++){
            eansw.addAll(enqst[i]);
          }
          Map testData = {
            "qsts": json.encode(eansw),
            "main": main1.toString(),
            'creator_email': email
          };

          var save = await requests.postData(testData, ApiLinks.updateTest);
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
                  "Tests Updated",
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
  deleteTest(id) async {
    try {
      Map testData = {
        "test_id": id.toString(),
      };
      var save = await requests.postData(testData, ApiLinks.deleteTest);
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
              "Tests Deleted",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
            onWillPop: () async {
              Get.back();
              await getTests();
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
      print(save);
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void onInit() async {
    await checkNetwork();
    await getTests();
    cont1 = TextEditingController();
    cont2 = TextEditingController();
    cont3 = TextEditingController();
    cont4 = TextEditingController();
    cont5 = TextEditingController();

    econt1 = TextEditingController();
    econt2 = TextEditingController();
    econt3 = TextEditingController();
    econt4 = TextEditingController();
    econt5 = TextEditingController();

    cont6 = TextEditingController();
    cont7 = TextEditingController();
    cont8 = TextEditingController();
    cont9 = TextEditingController();
    cont10 = TextEditingController();

    econt6 = TextEditingController();
    econt7 = TextEditingController();
    econt8 = TextEditingController();
    econt9 = TextEditingController();
    econt10 = TextEditingController();

    cont11 = TextEditingController();
    cont12 = TextEditingController();
    cont13 = TextEditingController();
    cont14 = TextEditingController();
    cont15 = TextEditingController();

    econt11 = TextEditingController();
    econt12 = TextEditingController();
    econt13 = TextEditingController();
    econt14 = TextEditingController();
    econt15 = TextEditingController();

    cont16 = TextEditingController();
    cont17 = TextEditingController();
    cont18 = TextEditingController();
    cont19 = TextEditingController();
    cont20 = TextEditingController();

    econt16 = TextEditingController();
    econt17 = TextEditingController();
    econt18 = TextEditingController();
    econt19 = TextEditingController();
    econt20 = TextEditingController();

    cont21 = TextEditingController();
    cont22 = TextEditingController();
    cont23 = TextEditingController();
    cont24 = TextEditingController();
    cont25 = TextEditingController();

    econt21 = TextEditingController();
    econt22 = TextEditingController();
    econt23 = TextEditingController();
    econt24 = TextEditingController();
    econt25 = TextEditingController();

    cont26 = TextEditingController();
    cont27 = TextEditingController();
    cont28 = TextEditingController();
    cont29 = TextEditingController();
    cont30 = TextEditingController();

    econt26 = TextEditingController();
    econt27 = TextEditingController();
    econt28 = TextEditingController();
    econt29 = TextEditingController();
    econt30 = TextEditingController();

    cont31 = TextEditingController();
    cont32 = TextEditingController();
    cont33 = TextEditingController();
    cont34 = TextEditingController();
    cont35 = TextEditingController();

    econt31 = TextEditingController();
    econt32 = TextEditingController();
    econt33 = TextEditingController();
    econt34 = TextEditingController();
    econt35 = TextEditingController();

    cont36 = TextEditingController();
    cont37 = TextEditingController();
    cont38 = TextEditingController();
    cont39 = TextEditingController();
    cont40 = TextEditingController();

    econt36 = TextEditingController();
    econt37 = TextEditingController();
    econt38 = TextEditingController();
    econt39 = TextEditingController();
    econt40 = TextEditingController();

    cont41 = TextEditingController();
    cont42 = TextEditingController();
    cont43 = TextEditingController();
    cont44 = TextEditingController();
    cont45 = TextEditingController();

    econt41 = TextEditingController();
    econt42 = TextEditingController();
    econt43 = TextEditingController();
    econt44 = TextEditingController();
    econt45 = TextEditingController();

    cont46 = TextEditingController();
    cont47 = TextEditingController();
    cont48 = TextEditingController();
    cont49 = TextEditingController();
    cont50 = TextEditingController();

    econt46 = TextEditingController();
    econt47 = TextEditingController();
    econt48 = TextEditingController();
    econt49 = TextEditingController();
    econt50 = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    cont1.dispose();
    cont2.dispose();
    cont3.dispose();
    cont4.dispose();
    cont5.dispose();

    econt1.dispose();
    econt2.dispose();
    econt3.dispose();
    econt4.dispose();
    econt5.dispose();

    econt1.dispose();
    econt2.dispose();
    econt3.dispose();
    econt4.dispose();
    econt5.dispose();

    cont6.dispose();
    cont7.dispose();
    cont8.dispose();
    cont9.dispose();
    cont10.dispose();

    econt6.dispose();
    econt7.dispose();
    econt8.dispose();
    econt9.dispose();
    econt10.dispose();

    cont11.dispose();
    cont12.dispose();
    cont13.dispose();
    cont14.dispose();
    cont15.dispose();

    econt11.dispose();
    econt12.dispose();
    econt13.dispose();
    econt14.dispose();
    econt15.dispose();

    cont16.dispose();
    cont17.dispose();
    cont18.dispose();
    cont19.dispose();
    cont20.dispose();

    econt16.dispose();
    econt17.dispose();
    econt18.dispose();
    econt19.dispose();
    econt20.dispose();

    cont21.dispose();
    cont22.dispose();
    cont23.dispose();
    cont24.dispose();
    cont25.dispose();

    econt21.dispose();
    econt22.dispose();
    econt23.dispose();
    econt24.dispose();
    econt25.dispose();

    cont26.dispose();
    cont27.dispose();
    cont28.dispose();
    cont29.dispose();
    cont30.dispose();

    econt26.dispose();
    econt27.dispose();
    econt28.dispose();
    econt29.dispose();
    econt30.dispose();

    cont31.dispose();
    cont32.dispose();
    cont33.dispose();
    cont34.dispose();
    cont35.dispose();

    econt31.dispose();
    econt32.dispose();
    econt33.dispose();
    econt34.dispose();
    econt35.dispose();

    cont36.dispose();
    cont37.dispose();
    cont38.dispose();
    cont39.dispose();
    cont40.dispose();

    econt36.dispose();
    econt37.dispose();
    econt38.dispose();
    econt39.dispose();
    econt40.dispose();

    cont41.dispose();
    cont42.dispose();
    cont43.dispose();
    cont44.dispose();
    cont45.dispose();

    econt41.dispose();
    econt42.dispose();
    econt43.dispose();
    econt44.dispose();
    econt45.dispose();

    cont46.dispose();
    cont47.dispose();
    cont48.dispose();
    cont49.dispose();
    cont50.dispose();

    econt46.dispose();
    econt47.dispose();
    econt48.dispose();
    econt49.dispose();
    econt50.dispose();

    super.dispose();
  }
}