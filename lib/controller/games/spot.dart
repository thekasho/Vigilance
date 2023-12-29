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
  CountdownController countdownController5 = CountdownController(autoStart: true);
  CountdownController countdownController6 = CountdownController(autoStart: true);
  CountdownController countdownController7 = CountdownController(autoStart: true);
  CountdownController countdownController8 = CountdownController(autoStart: true);
  CountdownController countdownController9 = CountdownController(autoStart: true);
  CountdownController countdownController10 = CountdownController(autoStart: true);
  CountdownController countdownController11 = CountdownController(autoStart: true);
  CountdownController countdownController12 = CountdownController(autoStart: true);
  CountdownController countdownController13 = CountdownController(autoStart: true);
  CountdownController countdownController14 = CountdownController(autoStart: true);
  CountdownController countdownController15 = CountdownController(autoStart: true);

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
  int lvlFive = 14;
  int lvlSix = 21;
  int lvlSeven = 23;
  int lvlEight = 26;
  int lvlNine = 30;
  int lvlTen = 31;
  int lvlEleven = 40;
  int lvlTwelve = 37;
  int lvlThirteen = 47;
  int lvlFourteen = 47;
  int lvlFifteen = 48;

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  getLevel() async {
    try {

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
        var levelResponse = await requests.postData(levelRequest, ApiLinks.spotGameLevel);

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
        title: "times_up".tr,
        titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
        titleStyle: TextStyle(
          fontSize: 18.sp,
          fontFamily: "Cairo",
          color: red,
          fontWeight: FontWeight.bold
        ),
        content: Text(
          "times_up_try_again".tr,
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
              "try_againً".tr,
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
              } else if(clevel == 5){
                countdownController5.restart();
              } else if(clevel == 6){
                countdownController6.restart();
              } else if(clevel == 7){
                countdownController7.restart();
              } else if(clevel == 8){
                countdownController8.restart();
              } else if(clevel == 9){
                countdownController9.restart();
              } else if(clevel == 10){
                countdownController10.restart();
              } else if(clevel == 11){
                countdownController11.restart();
              } else if(clevel == 12){
                countdownController12.restart();
              } else if(clevel == 13){
                countdownController13.restart();
              } else if(clevel == 14){
                countdownController14.restart();
              } else if(clevel == 15){
                countdownController15.restart();
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
              "cancel".tr,
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
          } else if(clevel == 5){
            countdownController5.restart();
          } else if(clevel == 6){
            countdownController6.restart();
          } else if(clevel == 7){
            countdownController7.restart();
          } else if(clevel == 8){
            countdownController8.restart();
          } else if(clevel == 9){
            countdownController9.restart();
          } else if(clevel == 10){
            countdownController10.restart();
          } else if(clevel == 11){
            countdownController11.restart();
          } else if(clevel == 12){
            countdownController12.restart();
          } else if(clevel == 13){
            countdownController13.restart();
          } else if(clevel == 14){
            countdownController14.restart();
          } else if(clevel == 15){
            countdownController15.restart();
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
      await getLevel();
      update();
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
            Get.back();
            Get.to(() => const SpotGameScreen(level: 2));
            clevel = 2;
            await updateLevel();
            return false;
          }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 2 && no == lvlTwo){
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
              "lvl2Correct".tr,
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
            clevel = 3;
            await updateLevel();
            return false;
          }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 3 && no == lvlThree){
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
              "lvl3Correct".tr,
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
            clevel = 4;
            await updateLevel();
            return false;
          }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 4 && no == lvlFour){
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
              "lvl4Correct".tr,
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
            Get.to(() => const SpotGameScreen(level: 5));
            clevel = 5;
            await updateLevel();
            return false;
          }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 5 && no == lvlFive){
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
                "lvl5Correct".tr,
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
              Get.to(() => const SpotGameScreen(level: 6));
              clevel = 6;
              await updateLevel();
              return false;
            }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 6 && no == lvlSix){
        countdownController6.pause();
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
                  fontSize: 17.sp,
                  fontFamily: "Cairo",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onWillPop: () async {
              Get.back();
              Get.back();
              Get.to(() => const SpotGameScreen(level: 7));
              clevel = 7;
              await updateLevel();
              return false;
            }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 7 && no == lvlSeven){
        countdownController7.pause();
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
                  fontSize: 17.sp,
                  fontFamily: "Cairo",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onWillPop: () async {
              Get.back();
              Get.back();
              Get.to(() => const SpotGameScreen(level: 8));
              clevel = 8;
              await updateLevel();
              return false;
            }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 8 && no == lvlEight){
        countdownController8.pause();
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
                  fontSize: 17.sp,
                  fontFamily: "Cairo",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onWillPop: () async {
              Get.back();
              Get.back();
              Get.to(() => const SpotGameScreen(level: 9));
              clevel = 9;
              await updateLevel();
              return false;
            }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 9 && no == lvlNine){
        countdownController9.pause();
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
                  fontSize: 17.sp,
                  fontFamily: "Cairo",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onWillPop: () async {
              Get.back();
              Get.back();
              Get.to(() => const SpotGameScreen(level: 10));
              clevel = 10;
              await updateLevel();
              return false;
            }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 10 && no == lvlTen){
        countdownController10.pause();
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
                  fontSize: 17.sp,
                  fontFamily: "Cairo",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onWillPop: () async {
              Get.back();
              Get.back();
              Get.to(() => const SpotGameScreen(level: 11));
              clevel = 11;
              await updateLevel();
              return false;
            }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 11 && no == lvlEleven){
        countdownController11.pause();
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
                  fontSize: 17.sp,
                  fontFamily: "Cairo",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onWillPop: () async {
              Get.back();
              Get.back();
              Get.to(() => const SpotGameScreen(level: 12));
              clevel = 12;
              await updateLevel();
              return false;
            }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 12 && no == lvlTwelve){
        countdownController12.pause();
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
                  fontSize: 17.sp,
                  fontFamily: "Cairo",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onWillPop: () async {
              Get.back();
              Get.back();
              Get.to(() => const SpotGameScreen(level: 13));
              clevel = 13;
              await updateLevel();
              return false;
            }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 13 && no == lvlThirteen){
        countdownController13.pause();
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
                  fontSize: 17.sp,
                  fontFamily: "Cairo",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onWillPop: () async {
              Get.back();
              Get.back();
              Get.to(() => const SpotGameScreen(level: 14));
              clevel = 14;
              await updateLevel();
              return false;
            }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 14 && no == lvlFourteen){
        countdownController14.pause();
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
                  fontSize: 17.sp,
                  fontFamily: "Cairo",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onWillPop: () async {
              Get.back();
              Get.back();
              Get.to(() => const SpotGameScreen(level: 15));
              clevel = 15;
              await updateLevel();
              return false;
            }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else if(clevel == 15 && no == lvlFifteen){
        countdownController15.pause();
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
                fontSize: 17.sp,
                fontFamily: "Cairo",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          onWillPop: () async {
            Get.back();
            Get.back();
            clevel = 15;
            return false;
          }
        );
        await audioPlayer.play(AssetSource("sounds/win.mp3"));
        update();
      } else {
        Get.defaultDialog(
          backgroundColor: white,
          title: "wrong".tr,
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
                "try_again".tr,
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
                "cancel".tr,
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
  void onInit() {
    statusRequest = StatusRequest.success;
    update();
    super.onInit();
  }

}