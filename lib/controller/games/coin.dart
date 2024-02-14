import 'package:audioplayers/audioplayers.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timer_count_down/timer_controller.dart';

import '../../app_links.dart';
import '../../core/class/statusrequest.dart';
import '../../core/data/remote/requests.dart';
import '../../helpers/helpers.dart';
import '../../presentation/screens/screens.dart';
import '../../repo/api.dart';

abstract class CoinGameCont extends GetxController {
  checkNetwork();
  getLevel();
  timesUp();
  // checkCanAccess();
  saveClicks(int click);
  updateLevel();
}
class CoinGameContImp extends CoinGameCont {
  Requests requests = Requests(Get.find());
  AudioPlayer audioPlayer = AudioPlayer();

  StatusRequest statusRequest = StatusRequest.none;

  CountdownController countdownController1 = CountdownController(autoStart: true);
  CountdownController countdownController2 = CountdownController(autoStart: true);
  CountdownController countdownController3 = CountdownController(autoStart: true);
  CountdownController countdownController4 = CountdownController(autoStart: true);
  CountdownController countdownController5 = CountdownController(autoStart: true);

  bool isConnected = false;
  String email = "";
  int level = 0;
  int clevel = 0;

  List lvlOneList = [1,4,3,2];
  List lvlTwoList = [2,3,4,2];
  List lvlThreeList = [2,4,2,1];
  List lvlFourList = [4,1,3,2];
  List lvlFiveList = [3,2,1,4];

  int timerSeconds = 40;

  List ans = [];

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
          title: "error".tr,
          titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
          titleStyle: TextStyle(
            fontSize: 18.sp,
            fontFamily: "Cairo",
            color: red,
            fontWeight: FontWeight.bold
          ),
          content: Text(
            "no_internet".tr,
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
        var levelResponse = await requests.postData(levelRequest, ApiLinks.coinGameLevel);
        if(StatusRequest.serverFailure == levelResponse){
          Get.defaultDialog(
            backgroundColor: white,
            title: "error".tr,
            titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
            titleStyle: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Cairo",
              color: red,
              fontWeight: FontWeight.bold
            ),
            content: Text(
              "server_error".tr,
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
          );
        } else if (levelResponse['status'] == 200){
          level = levelResponse['result'];
          if(clevel > level){
            clevel = level;
          }
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
  updateLevel() async {
    try {
      Map levelRequest = {
        'user_email': email,
        'level': clevel.toString(),
      };
      await requests.postData(levelRequest, ApiLinks.updateCoinsGameLevel);
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  saveClicks(click) async {
    try {
      ans.add(click);

      if(clevel == 1) {
        if (ans.length <= 4) {
          if(const ListEquality().equals(ans, lvlOneList)){
            countdownController2.pause();
            Get.defaultDialog(
              backgroundColor: white,
              title: "correct".tr,
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
                  "lvl1Correct".tr,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 2;
                await updateLevel();
                update();
                Get.back();
                Get.back();
                Get.back();
                return false;
              }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          } else if(ans.length >= 4){
            Get.defaultDialog(
              backgroundColor: white,
              title: "lvlWrong".tr,
              titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
              titleStyle: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
                color: red,
                fontWeight: FontWeight.bold
              ),
              content: Text(
                "lvlWrong".tr,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
            );
            ans = [];
          }
        }
      } else if(clevel == 2) {
        if (ans.length <= 4) {
          if(const ListEquality().equals(ans, lvlTwoList)){
            countdownController3.pause();
            Get.defaultDialog(
                backgroundColor: white,
                title: "correct".tr,
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
                    "lvl2Correct".tr,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "Cairo",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onWillPop: () async {
                  clevel = 3;
                  await updateLevel();
                  update();
                  Get.back();
                  Get.back();
                  Get.back();
                  return false;
                }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          } else if(ans.length >= 4){
            Get.defaultDialog(
              backgroundColor: white,
              title: "lvlWrong".tr,
              titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Text(
                "lvlWrong".tr,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
            );
            ans = [];
          }
        }
      } else if(clevel == 3) {
        if (ans.length <= 4) {
          if(const ListEquality().equals(ans, lvlThreeList)){
            countdownController4.pause();
            Get.defaultDialog(
              backgroundColor: white,
              title: "correct".tr,
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
                  "lvl3Correct".tr,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 4;
                await updateLevel();
                update();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          } else if(ans.length >= 4){
            Get.defaultDialog(
              backgroundColor: white,
              title: "lvlWrong".tr,
              titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
              titleStyle: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
                color: red,
                fontWeight: FontWeight.bold
              ),
              content: Text(
                "lvlWrong".tr,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
            );
            ans = [];
          }
        }
      } else if(clevel == 4) {
        print(ans);
        if (ans.length <= 4) {
          if(const ListEquality().equals(ans, lvlFourList)){
            countdownController5.pause();
            Get.defaultDialog(
                backgroundColor: white,
                title: "correct".tr,
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
                    "lvl4Correct".tr,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "Cairo",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onWillPop: () async {
                  clevel = 5;
                  await updateLevel();
                  update();
                  Get.back();
                  Get.back();
                  Get.back();
                  update();
                  return false;
                }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          } else if(ans.length >= 4){
            Get.defaultDialog(
              backgroundColor: white,
              title: "lvlWrong".tr,
              titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Text(
                "lvlWrong".tr,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
            );
            ans = [];
          }
        }
      } else if(clevel == 5) {
        print(ans);
        if (ans.length <= 4) {
          if(const ListEquality().equals(ans, lvlFiveList)){
            Get.defaultDialog(
              backgroundColor: white,
              title: "correct".tr,
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
                  "lvl5Correct".tr,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 5;
                await updateLevel();
                update();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          } else if(ans.length >= 4){
            Get.defaultDialog(
              backgroundColor: white,
              title: "lvlWrong".tr,
              titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
              titleStyle: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
                color: red,
                fontWeight: FontWeight.bold
              ),
              content: Text(
                "lvlWrong".tr,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
            );
            ans = [];
          }
        }
      }
    } catch(e){
      print("Error: $e");
    }
  }

  @override
  timesUp(){
    if(clevel == 1) {
      Get.to(() => const StdCoinSelectScreen(level: 1));
    } else if(clevel == 2) {
      Get.to(() => const StdCoinSelectScreen(level: 2));
    } else if(clevel == 3) {
      Get.to(() => const StdCoinSelectScreen(level: 3));
    } else if(clevel == 4) {
      Get.to(() => const StdCoinSelectScreen(level: 4));
    } else if(clevel == 5) {
      Get.to(() => const StdCoinSelectScreen(level: 5));
    }
  }

  @override
  void onReady() async {
    super.onReady();
    await checkNetwork();
    getLevel();
  }
}