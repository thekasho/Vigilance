import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timer_count_down/timer_controller.dart';

import '../../app_links.dart';
import '../../core/class/statusrequest.dart';
import '../../core/data/remote/requests.dart';
import '../../helpers/helpers.dart';
import '../../repo/api.dart';

abstract class SpotGameCont extends GetxController {
  checkNetwork();
  getLevel();
  timesUp();
  submitAnswer(int no);
}
class SpotGameContImp extends SpotGameCont {
  Requests requests = Requests(Get.find());
  CountdownController countdownController1 = CountdownController(autoStart: true);
  CountdownController countdownController2 = CountdownController(autoStart: true);
  CountdownController countdownController3 = CountdownController(autoStart: true);
  CountdownController countdownController4 = CountdownController(autoStart: true);
  AudioPlayer audioPlayer = AudioPlayer();

  StatusRequest statusRequest = StatusRequest.none;

  bool isConnected = false;
  String email = "";
  int level = 0;
  int clevel = 0;
  int lvlOne = 5;
  int lvlTwo = 7;
  int lvlThree = 9;
  int lvlFour = 4;

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  getLevel() async {
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
      if(loginData != null){
        email = loginData['email'];
        Map levelRequest = {
          'user_email': loginData['email'],
        };
        var levelResponse = await requests.postData(levelRequest, ApiLinks.spotGameLevel);
        if(StatusRequest.serverFailure == levelResponse){
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
        } else if (levelResponse['status'] == 200){
          level = levelResponse['result'];
          update();
        }
        statusRequest = StatusRequest.success;
        update();
        print(level);
      }

    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  timesUp(){
    try {
      Get.defaultDialog(
        backgroundColor: white,
        title: "Opps.. Times Up",
        titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
        titleStyle: TextStyle(
            fontSize: 18.sp,
            fontFamily: "Cairo",
            color: red,
            fontWeight: FontWeight.bold
        ),
        content: Text(
          "Times Up, Try again !!",
          style: TextStyle(
            fontSize: 18.sp,
            fontFamily: "Cairo",
          ),
        ),
        contentPadding: const EdgeInsets.only(
          top: 0,
          bottom: 10
        ),
        confirm: SizedBox(
          width: 30.w,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(greenSuccess),
              shape: MaterialStateProperty.all<
                  RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(
                    vertical: 1.h
                ),
              ),
            ),
            child: Text(
              "Try again",
              style: TextStyle(
                  fontSize: 16.sp,
                  color: black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo'
              ),
            ),
            onPressed: () {
              Get.back();
              if(clevel == 1) {
                countdownController1.restart();
              } else if(clevel == 2){
                countdownController2.restart();
              } else if(clevel == 3){
                countdownController3.restart();
              } else if(clevel == 4){
                countdownController4.restart();
              }
            },
          ),
        ),
        cancel: SizedBox(
          width: 30.w,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(lightBtn),
              shape: MaterialStateProperty.all<
                  RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(
                    vertical: 1.h
                ),
              ),
            ),
            child: Text(
              "Cancel",
              style: TextStyle(
                  fontSize: 16.sp,
                  color: black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo'
              ),
            ),
            onPressed: () {
              Get.back();
              Get.back();
            },
          ),
        ),
        onWillPop: () async {
          Get.back();
          if(clevel == 1) {
            countdownController1.restart();
          } else if(clevel == 2){
            countdownController2.restart();
          } else if(clevel == 3){
            countdownController3.restart();
          } else if(clevel == 4){
            countdownController4.restart();
          }
          return false;
        }
      );
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  submitAnswer(no) async {
    try {
      if(clevel == 1 && no == lvlOne){
        await audioPlayer.setSourceAsset("sounds/win.mp3");
      } else if(clevel == 2 && no == lvlTwo){

      } else if(clevel == 3 && no == lvlThree){

      } else if(clevel == 4 && no == lvlFour){

      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void onReady() async {
    super.onReady();
    await checkNetwork();
    getLevel();
  }

  @override
  void dispose() {
    super.dispose();
  }

}