import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:collection/collection.dart';

import '../../app_links.dart';
import '../../core/class/statusrequest.dart';
import '../../core/data/remote/requests.dart';
import '../../helpers/helpers.dart';
import '../../repo/api.dart';

abstract class MemoryGameCont extends GetxController {
  checkNetwork();
  getLevel();
  saveClicks(int click);
  updateLevel();
  playAns();
  checkCanAccess();
}
class MemoryGameContImp extends MemoryGameCont {
  Requests requests = Requests(Get.find());
  AudioPlayer audioPlayer = AudioPlayer();

  StatusRequest statusRequest = StatusRequest.none;

  bool isConnected = false;
  String email = "";
  int level = 0;
  int clevel = 0;

  double lvlOneOp = 0;
  double lvlTwoOp = 0;
  double lvlThreeOp = 0;
  double lvlFourOp = 0;

  List ans = [];

  List oneAns      = [1,4,3];
  List twoAns      = [1,4,3,4];
  List threeAns    = [1,4,3,4,2];
  List fourAns     = [3,2,1,3,4,2];
  List fiveAns     = [3,2,1,3,4,2,1];

  List sixAns      = [4,3,4,2,3,1,1];
  List sevenAns    = [4,3,4,2,3,1,1,3];
  List eightAns    = [4,3,4,2,3,1,3];
  List nineAns     = [4,3,4,3,1,2];
  List tenAns      = [2,1,3,2,4,1,3,4];
  List elevenAns   = [2,1,3,2,2,4,1,3,4];
  List twelveAns   = [2,1,3,2,2,4,2,3,4];
  List thirteenAns = [2,4,4,3,2,1,2,1,3,3];
  List fourteenAns = [2,4,3,2,2,1,4,1,3,3];
  List fifteenAns  = [2,3,3,2,3,1,4,3,3];

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
        var levelResponse = await requests.postData(levelRequest, ApiLinks.memoryGameLevel);
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
  playAns() async {
    try {
      if(clevel == 1){

        await audioPlayer.play(AssetSource("sounds/1.wav"));
        lvlOneOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 300)).then((value) {
          lvlOneOp = 0;
          update();
        });           // 1

        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4

        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3

      }
      else if(clevel == 2){

        await audioPlayer.play(AssetSource("sounds/1.wav"));
        lvlOneOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 300)).then((value) {
          lvlOneOp = 0;
          update();
        });           // 1

        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4

        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3

        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4

      }
      else if(clevel == 3){

        await audioPlayer.play(AssetSource("sounds/1.wav"));
        lvlOneOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 300)).then((value) {
          lvlOneOp = 0;
          update();
        });           // 1

        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4

        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3

        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4

        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2

      }
      else if(clevel == 4){
        await audioPlayer.play(AssetSource("sounds/4.wav"));
        lvlThreeOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 400)).then((value) {
          lvlThreeOp = 0;
          update();
        });           // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
      }
      else if(clevel == 5){
        await audioPlayer.play(AssetSource("sounds/4.wav"));
        lvlThreeOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 400)).then((value) {
          lvlThreeOp = 0;
          update();
        });           // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
      }
      else if(clevel == 6){
        await audioPlayer.play(AssetSource("sounds/3.wav"));
        lvlFourOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 400)).then((value) {
          lvlFourOp = 0;
          update();
        });           // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 1000)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });    // 1
      }
      else if(clevel == 7){

        await audioPlayer.play(AssetSource("sounds/3.wav"));
        lvlFourOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 400)).then((value) {
          lvlFourOp = 0;
          update();
        });           // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 500)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await audioPlayer.play(AssetSource("sounds/3.wav"));
        lvlFourOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 500)).then((value) {
          lvlFourOp = 0;
          update();
        });           // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 500)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 1000)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });    // 1
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 500)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
      }
      else if(clevel == 8){
        await audioPlayer.play(AssetSource("sounds/3.wav"));
        lvlFourOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 400)).then((value) {
          lvlFourOp = 0;
          update();
        });           // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 500)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
      }
      else if(clevel == 9){
        await audioPlayer.play(AssetSource("sounds/3.wav"));
        lvlFourOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 400)).then((value) {
          lvlFourOp = 0;
          update();
        });           // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
      }
      else if(clevel == 10){
        await audioPlayer.play(AssetSource("sounds/2.wav"));
        lvlTwoOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 300)).then((value) {
          lvlTwoOp = 0;
          update();
        });           // 2
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
      }
      else if(clevel == 11){
        await audioPlayer.play(AssetSource("sounds/2.wav"));
        lvlTwoOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 300)).then((value) {
          lvlTwoOp = 0;
          update();
        });           // 2
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 1200)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 300)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
      }
      else if(clevel == 12){
        await audioPlayer.play(AssetSource("sounds/2.wav"));
        lvlTwoOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 400)).then((value) {
          lvlTwoOp = 0;
          update();
        });           // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 1000)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
      } else if(clevel == 13){
        await audioPlayer.play(AssetSource("sounds/2.wav"));
        lvlTwoOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 400)).then((value) {
          lvlTwoOp = 0;
          update();
        });           // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 1000)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 500)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 1000)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
      } else if(clevel == 14){
        await audioPlayer.play(AssetSource("sounds/2.wav"));
        lvlTwoOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 300)).then((value) {
          lvlTwoOp = 0;
          update();
        });           // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 1250)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 1000)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
      } else if(clevel == 15){
        await audioPlayer.play(AssetSource("sounds/2.wav"));
        lvlTwoOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 400)).then((value) {
          lvlTwoOp = 0;
          update();
        });           // 2
        await Future.delayed(const Duration(milliseconds: 400)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 1000)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlTwoOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/2.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlTwoOp = 0;
            update();
          });
        });     // 2
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlOneOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/1.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlOneOp = 0;
            update();
          });
        });     // 1
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlFourOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/3.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlFourOp = 0;
            update();
          });
        });     // 4
        await Future.delayed(const Duration(milliseconds: 500)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
        await Future.delayed(const Duration(milliseconds: 1000)).then((value) async {
          lvlThreeOp = 0.5;
          update();
          await audioPlayer.play(AssetSource("sounds/4.wav"));
          await Future.delayed(const Duration(milliseconds: 400)).then((value) {
            lvlThreeOp = 0;
            update();
          });
        });     // 3
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  checkCanAccess(){
    if(clevel > level){
      clevel = level;
    }
  }

  @override
  updateLevel() async {
    try {
      Map levelRequest = {
        'user_email': email,
        'level': clevel.toString(),
      };
      await requests.postData(levelRequest, ApiLinks.updateMemoryGameLevel);
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  saveClicks(click) async {
    try {
      if(click == 1){
        lvlOneOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 300)).then((value) {
          lvlOneOp = 0;
          update();
        });
      }
      else if(click == 2){
        lvlTwoOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 300)).then((value) {
          lvlTwoOp = 0;
          update();
        });
      }
      else if(click == 3){
        lvlThreeOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 300)).then((value) {
          lvlThreeOp = 0;
          update();
        });
      }
      else if(click == 4){
        lvlFourOp = 0.5;
        update();
        await Future.delayed(const Duration(milliseconds: 300)).then((value) {
          lvlFourOp = 0;
          update();
        });
      }

      ans.add(click);

      if(clevel == 1){
        if(ans.length <= 3){
          if(const ListEquality().equals(ans, oneAns)){
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
                Get.back();
                clevel = 2;
                await updateLevel();
                update();
                return false;
              }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 3){
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
              "lvl1Correct".tr,
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
          );
          ans = [];
        } else {
          ans = [];
        }
      }
      else if(clevel == 2){
        if(ans.length <= 4){
          if(const ListEquality().equals(ans, twoAns)){
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
                Get.back();
                clevel = 3;
                await updateLevel();
                update();
                return false;
              }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
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
        } else {
          ans = [];
        }
      }
      else if (clevel == 3){
        if(ans.length <= 5){
          if(const ListEquality().equals(ans, threeAns)){
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
                Get.back();
                clevel = 4;
                await updateLevel();
                update();
                return false;
              }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 5){
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
        } else {
          ans = [];
        }
      }
      else if(clevel == 4){
        if(ans.length <= 6){
          if(const ListEquality().equals(ans, fourAns)){
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
                  Get.back();
                  clevel = 5;
                  await updateLevel();
                  update();
                  return false;
                }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 6){
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
        } else {
          ans = [];
        }
      }
      else if(clevel == 5){
        if(ans.length <= 7){
          if(const ListEquality().equals(ans, fiveAns)){
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
                  Get.back();
                  clevel = 6;
                  await updateLevel();
                  update();
                  return false;
                }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 7){
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
        } else {
          ans = [];
        }
      }
      else if(clevel == 6){
        if(ans.length <= 7){
          if(const ListEquality().equals(ans, sixAns)){
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
                  "lvl6Correct".tr,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                Get.back();
                clevel = 7;
                await updateLevel();
                update();
                return false;
              }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 7){
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
        } else {
          ans = [];
        }
      }
      else if(clevel == 7){
        if(ans.length <= 8){
          if(const ListEquality().equals(ans, sevenAns)){
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
                  "lvl7Correct".tr,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                Get.back();
                clevel = 8;
                await updateLevel();
                update();
                return false;
              }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 8){
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
        } else {
          ans = [];
        }
      }
      else if(clevel == 8){
        if(ans.length <= 7){
          if(const ListEquality().equals(ans, eightAns)){
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
                    "lvl8Correct".tr,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "Cairo",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onWillPop: () async {
                  Get.back();
                  clevel = 9;
                  await updateLevel();
                  update();
                  return false;
                }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 7){
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
        } else {
          ans = [];
        }
      }
      else if(clevel == 9){
        if(ans.length <= 6){
          if(const ListEquality().equals(ans, nineAns)){
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
                    "lvl9Correct".tr,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "Cairo",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onWillPop: () async {
                  Get.back();
                  clevel = 10;
                  await updateLevel();
                  update();
                  return false;
                }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 6){
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
        } else {
          ans = [];
        }
      }
      else if(clevel == 10){
        if(ans.length <= 8){
          if(const ListEquality().equals(ans, tenAns)){
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
                    "lvl10Correct".tr,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "Cairo",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onWillPop: () async {
                  Get.back();
                  clevel = 11;
                  await updateLevel();
                  update();
                  return false;
                }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 8){
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
        } else {
          ans = [];
        }
      }
      else if(clevel == 11){
        if(ans.length <= 9){
          if(const ListEquality().equals(ans, elevenAns)){
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
                    "lvl11Correct".tr,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "Cairo",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onWillPop: () async {
                  Get.back();
                  clevel = 12;
                  await updateLevel();
                  update();
                  return false;
                }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 9){
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
        } else {
          ans = [];
        }
      }
      else if(clevel == 12){
        if(ans.length <= 9){
          if(const ListEquality().equals(ans, twelveAns)){
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
                    "lvl12Correct".tr,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "Cairo",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onWillPop: () async {
                  Get.back();
                  clevel = 13;
                  await updateLevel();
                  update();
                  return false;
                }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 9){
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
        } else {
          ans = [];
        }
      }
      else if(clevel == 13){
        if(ans.length <= 10){
          if(const ListEquality().equals(ans, thirteenAns)){
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
                  "lvl13Correct".tr,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                Get.back();
                clevel = 14;
                await updateLevel();
                update();
                return false;
              }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 10){
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
        } else {
          ans = [];
        }
      }
      else if(clevel == 14){
        if(ans.length <= 10){
          if(const ListEquality().equals(ans, fourteenAns)){
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
                    "lvl14Correct".tr,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: "Cairo",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onWillPop: () async {
                  Get.back();
                  clevel = 15;
                  await updateLevel();
                  update();
                  return false;
                }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 10){
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
        } else {
          ans = [];
        }
      }
      else if(clevel == 15){
        if(ans.length <= 9){
          if(const ListEquality().equals(ans, fifteenAns)){
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
                  "lvl15Correct".tr,
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
                clevel = 15;
                await updateLevel();
                update();
                return false;
              }
            );
            await audioPlayer.play(AssetSource("sounds/win.mp3"));
            ans = [];
          }
        } else if(ans.length >= 9){
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
        } else {
          ans = [];
        }
      }
    } catch(e) {
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