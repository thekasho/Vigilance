import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:vig/presentation/screens/screens.dart';

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
  updateLevel();
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
  updateLevel() async {
    try {
      Map levelRequest = {
        'user_email': email,
        'level': clevel.toString(),
      };
      await requests.postData(levelRequest, ApiLinks.updateSpotGameLevel);
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  submitAnswer(no) async {
    try {
      if(clevel == 1 && no == lvlOne){
        countdownController1.pause();
        await updateLevel();
        Get.defaultDialog(
          backgroundColor: white,
          title: "Correct",
          titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
          titleStyle: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Cairo",
              color: green,
              fontWeight: FontWeight.bold
          ),
          content: Container(
            alignment: Alignment.center,
            height: 7.h,
            child: Text(
              "Good Job,You earned 5 points..",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          onWillPop: () async {
            Get.back();
            Get.back();
            Get.to(() => const SpotGameScreen(level: 2));
            return false;
          }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 2 && no == lvlTwo){
        countdownController2.pause();
        Get.defaultDialog(
          backgroundColor: white,
          title: "Correct",
          titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
          titleStyle: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Cairo",
              color: green,
              fontWeight: FontWeight.bold
          ),
          content: Container(
            alignment: Alignment.center,
            height: 7.h,
            child: Text(
              "You`re doing great. You earned 7 points..",
              style: TextStyle(
                fontSize: 17.sp,
                fontFamily: "Cairo",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          onWillPop: () async {
            Get.back();
            Get.back(canPop: true);
            Get.to(() => const SpotGameScreen(level: 3));
            return false;
          }
        );
      } else if(clevel == 3 && no == lvlThree){
        countdownController2.pause();
        Get.defaultDialog(
          backgroundColor: white,
          title: "Correct",
          titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
          titleStyle: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Cairo",
              color: green,
              fontWeight: FontWeight.bold
          ),
          content: Container(
            alignment: Alignment.center,
            height: 7.h,
            child: Text(
              "Keep going. You earned 7 points..",
              style: TextStyle(
                fontSize: 17.sp,
                fontFamily: "Cairo",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          onWillPop: () async {
            Get.back();
            Get.back();
            Get.to(() => const SpotGameScreen(level: 4));
            return false;
          }
        );
      } else if(clevel == 4 && no == lvlFour){
        countdownController3.pause();
        Get.defaultDialog(
          backgroundColor: white,
          title: "Correct",
          titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
          titleStyle: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Cairo",
              color: green,
              fontWeight: FontWeight.bold
          ),
          content: Container(
            alignment: Alignment.center,
            height: 7.h,
            child: Text(
              "Excellent, You earned 10 points..",
              style: TextStyle(
                fontSize: 17.sp,
                fontFamily: "Cairo",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          onWillPop: () async {
            Get.back();
            Get.back();
            return false;
          }
        );
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

}