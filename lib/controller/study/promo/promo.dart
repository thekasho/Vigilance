import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timer_count_down/timer_controller.dart';

import '../../../core/class/statusrequest.dart';
import '../../../core/data/remote/requests.dart';
import '../../../helpers/helpers.dart';
import '../../../repo/api.dart';

abstract class PromodoroCont extends GetxController {
  checkNetwork();
  timeUp();
  saveSettings();
  getSettings();
  startTimer();
}
class PromodoroContImp extends PromodoroCont {
  Requests requests = Requests(Get.find());
  CountdownController countdownController1 = CountdownController(autoStart: false);
  AudioPlayer audioPlayer = AudioPlayer();

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController promodoro;
  late TextEditingController shortBreak;
  late TextEditingController longBreak;
  late TextEditingController longBreakInt;

  StatusRequest statusRequest = StatusRequest.none;

  bool isConnected = false;

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
    statusRequest = StatusRequest.success;
    update();
  }

  @override
  timeUp() async {
    await audioPlayer.play(AssetSource("sounds/win.mp3"));
    update();
  }

  @override
  startTimer() async {
    countdownController1.start();
    update();
  }

  @override
  getSettings() async {
    try {
      var oldSettings  = await LocaleApi.getPromodoroSettings();
      if(oldSettings != null){
        promodoro = TextEditingController(text: "${oldSettings['promodoro']}");
        shortBreak = TextEditingController(text: "${oldSettings['shortBreak']}");
        longBreak = TextEditingController(text: "${oldSettings['longBreak']}");
        longBreakInt = TextEditingController(text: "${oldSettings['longBreakInt']}");
        update();
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  saveSettings() async {
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

        var oldSettings  = await LocaleApi.getPromodoroSettings();
        if(oldSettings != null){
          Map settings = {
            'promodoro': promodoro.text,
            'shortBreak': shortBreak.text,
            'longBreak': longBreak.text,
            'longBreakInt': longBreakInt.text,
          };
          var save = await LocaleApi.savePromodoroSettings(settings);
          if(save){
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
                "Settings Updated",
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
                "Try Again !!",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
            );
          }
        } else {
          Map settings = {
            'promodoro': promodoro.text,
            'shortBreak': shortBreak.text,
            'longBreak': longBreak.text,
            'longBreakInt': longBreakInt.text,
          };
          var save = await LocaleApi.savePromodoroSettings(settings);
          if(save){
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
                "Settings Updated",
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
                "Try Again !!",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
            );
          }
        }

      }
    } catch(e) {
      print("Error: $e");
    }
  }

  @override
  void onInit() async {
    await checkNetwork();
    promodoro = TextEditingController(text: "25");
    shortBreak = TextEditingController(text: "5");
    longBreak = TextEditingController(text: "15");
    longBreakInt = TextEditingController(text: "4");
    await getSettings();
    super.onInit();
  }

  @override
  void dispose() {
    promodoro.dispose();
    shortBreak.dispose();
    longBreak.dispose();
    longBreakInt.dispose();
    super.dispose();
  }
}