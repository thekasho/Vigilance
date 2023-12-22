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

abstract class ShoppingGameCont extends GetxController {
  checkNetwork();
  getLevel();
  timesUp();
  submitMathAns(int ans);
  saveClicks(int click, int img);
  updateLevel();
  checkCanAccess();
}
class ShoppingGameContImp extends ShoppingGameCont {

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

  List lvlOneList = [21,9];
  bool lvlOne1Y = false;
  bool lvlOne1N = false;
  bool lvlOne2Y = false;
  bool lvlOne2N = false;
  bool lvlOne3Y = false;
  bool lvlOne3N = false;
  bool lvlOne4Y = false;
  bool lvlOne4N = false;

  List lvlTwoList = [10, 25];
  bool lvlTwo1Y = false;
  bool lvlTwo1N = false;
  bool lvlTwo2Y = false;
  bool lvlTwo2N = false;
  bool lvlTwo3Y = false;
  bool lvlTwo3N = false;
  bool lvlTwo4Y = false;
  bool lvlTwo4N = false;

  List lvlThreeList = [3, 13, 12];
  bool lvlThree1Y = false;
  bool lvlThree1N = false;
  bool lvlThree2Y = false;
  bool lvlThree2N = false;
  bool lvlThree3Y = false;
  bool lvlThree3N = false;
  bool lvlThree4Y = false;
  bool lvlThree4N = false;
  bool lvlThree5Y = false;
  bool lvlThree5N = false;

  List lvlFourList = [6, 2, 8, 7];
  bool lvlFour1Y = false;
  bool lvlFour1N = false;
  bool lvlFour2Y = false;
  bool lvlFour2N = false;
  bool lvlFour3Y = false;
  bool lvlFour3N = false;
  bool lvlFour4Y = false;
  bool lvlFour4N = false;
  bool lvlFour5Y = false;
  bool lvlFour5N = false;

  List lvlFiveList = [24, 25, 26, 16, 15];
  bool lvlFive1Y = false;
  bool lvlFive1N = false;
  bool lvlFive2Y = false;
  bool lvlFive2N = false;
  bool lvlFive3Y = false;
  bool lvlFive3N = false;
  bool lvlFive4Y = false;
  bool lvlFive4N = false;
  bool lvlFive5Y = false;
  bool lvlFive5N = false;
  bool lvlFive6Y = false;
  bool lvlFive6N = false;
  bool lvlFive7Y = false;
  bool lvlFive7N = false;

  List lvlSixList = [7, 30, 29, 28, 3];
  bool lvlSix1Y = false;
  bool lvlSix1N = false;
  bool lvlSix2Y = false;
  bool lvlSix2N = false;
  bool lvlSix3Y = false;
  bool lvlSix3N = false;
  bool lvlSix4Y = false;
  bool lvlSix4N = false;
  bool lvlSix5Y = false;
  bool lvlSix5N = false;
  bool lvlSix6Y = false;
  bool lvlSix6N = false;
  bool lvlSix7Y = false;
  bool lvlSix7N = false;

  List lvlSevenList = [34, 31, 35, 32, 33];
  bool lvlSeven1Y = false;
  bool lvlSeven1N = false;
  bool lvlSeven2Y = false;
  bool lvlSeven2N = false;
  bool lvlSeven3Y = false;
  bool lvlSeven3N = false;
  bool lvlSeven4Y = false;
  bool lvlSeven4N = false;
  bool lvlSeven5Y = false;
  bool lvlSeven5N = false;
  bool lvlSeven6Y = false;
  bool lvlSeven6N = false;
  bool lvlSeven7Y = false;
  bool lvlSeven7N = false;

  List lvlEightList = [39, 41, 33, 40, 38];
  bool lvlEight1Y = false;
  bool lvlEight1N = false;
  bool lvlEight2Y = false;
  bool lvlEight2N = false;
  bool lvlEight3Y = false;
  bool lvlEight3N = false;
  bool lvlEight4Y = false;
  bool lvlEight4N = false;
  bool lvlEight5Y = false;
  bool lvlEight5N = false;
  bool lvlEight6Y = false;
  bool lvlEight6N = false;
  bool lvlEight7Y = false;
  bool lvlEight7N = false;

  List lvlNineList = [44, 43, 17, 42, 18];
  bool lvlNine1Y = false;
  bool lvlNine1N = false;
  bool lvlNine2Y = false;
  bool lvlNine2N = false;
  bool lvlNine3Y = false;
  bool lvlNine3N = false;
  bool lvlNine4Y = false;
  bool lvlNine4N = false;
  bool lvlNine5Y = false;
  bool lvlNine5N = false;
  bool lvlNine6Y = false;
  bool lvlNine6N = false;
  bool lvlNine7Y = false;
  bool lvlNine7N = false;

  List lvlTenList = [49, 6, 47, 50, 48];
  bool lvlTen1Y = false;
  bool lvlTen1N = false;
  bool lvlTen2Y = false;
  bool lvlTen2N = false;
  bool lvlTen3Y = false;
  bool lvlTen3N = false;
  bool lvlTen4Y = false;
  bool lvlTen4N = false;
  bool lvlTen5Y = false;
  bool lvlTen5N = false;
  bool lvlTen6Y = false;
  bool lvlTen6N = false;
  bool lvlTen7Y = false;
  bool lvlTen7N = false;

  List lvlElevenList = [53, 54, 20, 19, 29];
  bool lvlEleven1Y = false;
  bool lvlEleven1N = false;
  bool lvlEleven2Y = false;
  bool lvlEleven2N = false;
  bool lvlEleven3Y = false;
  bool lvlEleven3N = false;
  bool lvlEleven4Y = false;
  bool lvlEleven4N = false;
  bool lvlEleven5Y = false;
  bool lvlEleven5N = false;
  bool lvlEleven6Y = false;
  bool lvlEleven6N = false;
  bool lvlEleven7Y = false;
  bool lvlEleven7N = false;

  List lvlTwelveList = [57, 60, 59, 58, 56];
  bool lvlTwelve1Y = false;
  bool lvlTwelve1N = false;
  bool lvlTwelve2Y = false;
  bool lvlTwelve2N = false;
  bool lvlTwelve3Y = false;
  bool lvlTwelve3N = false;
  bool lvlTwelve4Y = false;
  bool lvlTwelve4N = false;
  bool lvlTwelve5Y = false;
  bool lvlTwelve5N = false;
  bool lvlTwelve6Y = false;
  bool lvlTwelve6N = false;
  bool lvlTwelve7Y = false;
  bool lvlTwelve7N = false;

  List lvlThirteenList = [23, 54, 19, 28, 20];
  bool lvlThirteen1Y = false;
  bool lvlThirteen1N = false;
  bool lvlThirteen2Y = false;
  bool lvlThirteen2N = false;
  bool lvlThirteen3Y = false;
  bool lvlThirteen3N = false;
  bool lvlThirteen4Y = false;
  bool lvlThirteen4N = false;
  bool lvlThirteen5Y = false;
  bool lvlThirteen5N = false;
  bool lvlThirteen6Y = false;
  bool lvlThirteen6N = false;
  bool lvlThirteen7Y = false;
  bool lvlThirteen7N = false;

  List lvlFourteenList = [1, 62, 24, 15, 29];
  bool lvlFourteen1Y = false;
  bool lvlFourteen1N = false;
  bool lvlFourteen2Y = false;
  bool lvlFourteen2N = false;
  bool lvlFourteen3Y = false;
  bool lvlFourteen3N = false;
  bool lvlFourteen4Y = false;
  bool lvlFourteen4N = false;
  bool lvlFourteen5Y = false;
  bool lvlFourteen5N = false;
  bool lvlFourteen6Y = false;
  bool lvlFourteen6N = false;
  bool lvlFourteen7Y = false;
  bool lvlFourteen7N = false;

  List lvlFiveteenList = [61, 62, 5, 59, 63];
  bool lvlFiveteen1Y = false;
  bool lvlFiveteen1N = false;
  bool lvlFiveteen2Y = false;
  bool lvlFiveteen2N = false;
  bool lvlFiveteen3Y = false;
  bool lvlFiveteen3N = false;
  bool lvlFiveteen4Y = false;
  bool lvlFiveteen4N = false;
  bool lvlFiveteen5Y = false;
  bool lvlFiveteen5N = false;
  bool lvlFiveteen6Y = false;
  bool lvlFiveteen6N = false;
  bool lvlFiveteen7Y = false;
  bool lvlFiveteen7N = false;

  int lvlOneAns = 58;
  int lvlTwoAns = 80;
  int lvlThreeAns = 34;
  int lvlFourAns = 22;
  int lvlFiveAns = 18;
  int lvlSixAns = 11;
  int lvlSevenAns = 14;
  int lvlEightAns = 31;
  int lvlNineAns = 27;
  int lvlTenAns = 14;
  int lvlElevenAns = 106;
  int lvlTwelveAns = 93;
  int lvlThirteenAns = 54;
  int lvlFourteenAns = 23;
  int lvlFiveteenAns = 158;

  int lvlTrue = 0;

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
        var levelResponse = await requests.postData(levelRequest, ApiLinks.shoppingGameLevel);

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
  timesUp(){
    try {
      if(clevel == 1) {
        Get.to(() => const ShopMathScreen(level: 1));
      } else if(clevel == 2){
        Get.to(() => const ShopMathScreen(level: 2));
      } else if(clevel == 3){
        Get.to(() => const ShopMathScreen(level: 3));
      } else if(clevel == 4){
        Get.to(() => const ShopMathScreen(level: 4));
      } else if(clevel == 5){
        Get.to(() => const ShopMathScreen(level: 5));
      } else if(clevel == 6){
        Get.to(() => const ShopMathScreen(level: 6));
      } else if(clevel == 7){
        Get.to(() => const ShopMathScreen(level: 7));
      } else if(clevel == 8){
        Get.to(() => const ShopMathScreen(level: 8));
      } else if(clevel == 9){
        Get.to(() => const ShopMathScreen(level: 9));
      } else if(clevel == 10){
        Get.to(() => const ShopMathScreen(level: 10));
      } else if(clevel == 11){
        Get.to(() => const ShopMathScreen(level: 11));
      } else if(clevel == 12){
        Get.to(() => const ShopMathScreen(level: 12));
      } else if(clevel == 13){
        Get.to(() => const ShopMathScreen(level: 13));
      } else if(clevel == 14){
        Get.to(() => const ShopMathScreen(level: 14));
      } else if(clevel == 15){
        Get.to(() => const ShopMathScreen(level: 15));
      } else {
        Get.back();
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  submitMathAns(ans){
    try {
      if(clevel == 1 && ans == lvlOneAns) {
        Get.to(() => const ShopSelectScreen(level: 1));
      }
      else if(clevel == 2 && ans == lvlTwoAns){
        Get.to(() => const ShopSelectScreen(level: 2));
      }
      else if(clevel == 3 && ans == lvlThreeAns){
        Get.to(() => const ShopSelectScreen(level: 3));
      }
      else if(clevel == 4 && ans == lvlFourAns){
        Get.to(() => const ShopSelectScreen(level: 4));
      }
      else if(clevel == 5 && ans == lvlFiveAns){
        Get.to(() => const ShopSelectScreen(level: 5));
      }
      else if(clevel == 6 && ans == lvlSixAns){
        Get.to(() => const ShopSelectScreen(level: 6));
      }
      else if(clevel == 7 && ans == lvlSevenAns){
        Get.to(() => const ShopSelectScreen(level: 7));
      }
      else if(clevel == 8 && ans == lvlEightAns){
        Get.to(() => const ShopSelectScreen(level: 8));
      }
      else if(clevel == 9 && ans == lvlNineAns){
        Get.to(() => const ShopSelectScreen(level: 9));
      }
      else if(clevel == 10 && ans == lvlTenAns){
        Get.to(() => const ShopSelectScreen(level: 10));
      }
      else if(clevel == 11 && ans == lvlElevenAns){
        Get.to(() => const ShopSelectScreen(level: 11));
      }
      else if(clevel == 12 && ans == lvlTwelveAns){
        Get.to(() => const ShopSelectScreen(level: 12));
      }
      else if(clevel == 13 && ans == lvlThirteenAns){
        Get.to(() => const ShopSelectScreen(level: 13));
      }
      else if(clevel == 14 && ans == lvlFourteenAns){
        Get.to(() => const ShopSelectScreen(level: 14));
      }
      else if(clevel == 15 && ans == lvlFiveteenAns){
        Get.to(() => const ShopSelectScreen(level: 15));
      }
      else {
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
            "Wrong Answer, Try again !!",
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
                "back".tr,
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
                Get.back();
              },
            ),
          ),
          onWillPop: () async {
            Get.back();
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
  updateLevel() async {
    try {
      Map levelRequest = {
        'user_email': email,
        'level': clevel.toString(),
      };
      await requests.postData(levelRequest, ApiLinks.updateShoppingGameLevel);
      getLevel();
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
  saveClicks(click, img) async {
    try {
      if(clevel == 1){
        if(lvlOneList.contains(click)){
          if(img == 1){
            lvlOne1Y = true;
          } else if(img == 2){
            lvlOne2Y = true;
          } else if(img == 3){
            lvlOne3Y = true;
          } else if(img == 4){
            lvlOne4Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlOne1N = true;
          } else if(img == 2){
            lvlOne2N = true;
          } else if(img == 3){
            lvlOne3N = true;
          } else if(img == 4){
            lvlOne4N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "wrong_answer".tr,
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlOne1Y = false;
                lvlOne1N = false;
                lvlOne2Y = false;
                lvlOne2N = false;
                lvlOne3Y = false;
                lvlOne3N = false;
                lvlOne4Y = false;
                lvlOne4N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.to( () => const ShoppingGameScreen(level: 1));
                countdownController1.restart();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 2){
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
                clevel = 2;
                await updateLevel();
                lvlOne1Y = false;
                lvlOne1N = false;
                lvlOne2Y = false;
                lvlOne2N = false;
                lvlOne3Y = false;
                lvlOne3N = false;
                lvlOne4Y = false;
                lvlOne4N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.to( () => const ShoppingGameScreen(level: 2));
                countdownController2.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 2){
          lvlTrue = 0;
        }
      }

      else if (clevel == 2){
        if(lvlTwoList.contains(click)){
          if(img == 1){
            lvlTwo1Y = true;
          } else if(img == 2){
            lvlTwo2Y = true;
          } else if(img == 3){
            lvlTwo3Y = true;
          } else if(img == 4){
            lvlTwo4Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlTwo1N = true;
          } else if(img == 2){
            lvlTwo2N = true;
          } else if(img == 3){
            lvlTwo3N = true;
          } else if(img == 4){
            lvlTwo4N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlTwo1Y = false;
                lvlTwo1N = false;
                lvlTwo2Y = false;
                lvlTwo2N = false;
                lvlTwo3Y = false;
                lvlTwo3N = false;
                lvlTwo4Y = false;
                lvlTwo4N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 2));
                countdownController2.restart();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 2){
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
                height: 10.h,
                child: Text(
                  "You`re doing great. You earned 7 points..",
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
                lvlTwo1Y = false;
                lvlTwo1N = false;
                lvlTwo2Y = false;
                lvlTwo2N = false;
                lvlTwo3Y = false;
                lvlTwo3N = false;
                lvlTwo4Y = false;
                lvlTwo4N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 3));
                countdownController3.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 2){
          lvlTrue = 0;
        }
      }

      else if(clevel == 3){
        if(lvlThreeList.contains(click)){
          if(img == 1){
            lvlThree1Y = true;
          } else if(img == 2){
            lvlThree2Y = true;
          } else if(img == 3){
            lvlThree3Y = true;
          } else if(img == 4){
            lvlThree4Y = true;
          } else if(img == 5) {
            lvlThree5Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlThree1N = true;
          } else if(img == 2){
            lvlThree2N = true;
          } else if(img == 3){
            lvlThree3N = true;
          } else if(img == 4){
            lvlThree4N = true;
          } else if(img == 5){
            lvlThree5N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlThree1Y = false;
                lvlThree1N = false;
                lvlThree2Y = false;
                lvlThree2N = false;
                lvlThree3Y = false;
                lvlThree3N = false;
                lvlThree4Y = false;
                lvlThree4N = false;
                lvlThree5Y = false;
                lvlThree5N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 3));
                countdownController3.restart();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 3){
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
                height: 8.h,
                child: Text(
                  "Keep going. You earned 7 points..",
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
                lvlThree1Y = false;
                lvlThree1N = false;
                lvlThree2Y = false;
                lvlThree2N = false;
                lvlThree3Y = false;
                lvlThree3N = false;
                lvlThree4Y = false;
                lvlThree4N = false;
                lvlThree5Y = false;
                lvlThree5N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 4));
                countdownController4.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 3){
          lvlTrue = 0;
        }
      }

      else if(clevel == 4){
        if(lvlFourList.contains(click)){
          if(img == 1){
            lvlFour1Y = true;
          } else if(img == 2){
            lvlFour2Y = true;
          } else if(img == 3){
            lvlFour3Y = true;
          } else if(img == 4){
            lvlFour4Y = true;
          } else if(img == 5) {
            lvlFour5Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlFour1N = true;
          } else if(img == 2){
            lvlFour2N = true;
          } else if(img == 3){
            lvlFour3N = true;
          } else if(img == 4){
            lvlFour4N = true;
          } else if(img == 5){
            lvlFour5N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlFour1Y = false;
                lvlFour1N = false;
                lvlFour2Y = false;
                lvlFour2N = false;
                lvlFour3Y = false;
                lvlFour3N = false;
                lvlFour4Y = false;
                lvlFour4N = false;
                lvlFour5Y = false;
                lvlFour5N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 4));
                countdownController4.restart();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 3){
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
                height: 8.h,
                child: Text(
                  "Excellent, You earned 10 points..",
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
                lvlFour1Y = false;
                lvlFour1N = false;
                lvlFour2Y = false;
                lvlFour2N = false;
                lvlFour3Y = false;
                lvlFour3N = false;
                lvlFour4Y = false;
                lvlFour4N = false;
                lvlFour5Y = false;
                lvlFour5N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 5));
                countdownController5.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 3){
          lvlTrue = 0;
        }
      }

      else if(clevel == 5){
        if(lvlFiveList.contains(click)){
          if(img == 1){
            lvlFive1Y = true;
          } else if(img == 2){
            lvlFive2Y = true;
          } else if(img == 3){
            lvlFive3Y = true;
          } else if(img == 4){
            lvlFive4Y = true;
          } else if(img == 5) {
            lvlFive5Y = true;
          } else if(img == 6) {
            lvlFive6Y = true;
          } else if(img == 7) {
            lvlFive7Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlFive1N = true;
          } else if(img == 2){
            lvlFive2N = true;
          } else if(img == 3){
            lvlFive3N = true;
          } else if(img == 4){
            lvlFive4N = true;
          } else if(img == 5){
            lvlFive5N = true;
          } else if(img == 6){
            lvlFive6N = true;
          } else if(img == 7){
            lvlFive7N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlFive1Y = false;
                lvlFive1N = false;
                lvlFive2Y = false;
                lvlFive2N = false;
                lvlFive3Y = false;
                lvlFive3N = false;
                lvlFive4Y = false;
                lvlFive4N = false;
                lvlFive5Y = false;
                lvlFive5N = false;
                lvlFive6Y = false;
                lvlFive6N = false;
                lvlFive7Y = false;
                lvlFive7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 5){
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
              height: 8.h,
              child: Text(
                "Excellent, You earned 12 points..",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onWillPop: () async {
              clevel = 6;
              await updateLevel();
              lvlFive1Y = false;
              lvlFive1N = false;
              lvlFive2Y = false;
              lvlFive2N = false;
              lvlFive3Y = false;
              lvlFive3N = false;
              lvlFive4Y = false;
              lvlFive4N = false;
              lvlFive5Y = false;
              lvlFive5N = false;
              lvlFive6Y = false;
              lvlFive6N = false;
              lvlFive7Y = false;
              lvlFive7N = false;
              Get.back();
              Get.back();
              Get.back();
              Get.back();
              Get.to(() => const ShoppingGameScreen(level: 6));
              countdownController6.restart();
              update();
              return false;
            }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 5){
          lvlTrue = 0;
        }
      }

      else if(clevel == 6){
        if(lvlSixList.contains(click)){
          if(img == 1){
            lvlSix1Y = true;
          } else if(img == 2){
            lvlSix2Y = true;
          } else if(img == 3){
            lvlSix3Y = true;
          } else if(img == 4){
            lvlSix4Y = true;
          } else if(img == 5) {
            lvlSix5Y = true;
          } else if(img == 6) {
            lvlSix6Y = true;
          } else if(img == 7) {
            lvlSix7Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlSix1N = true;
          } else if(img == 2){
            lvlSix2N = true;
          } else if(img == 3){
            lvlSix3N = true;
          } else if(img == 4){
            lvlSix4N = true;
          } else if(img == 5){
            lvlSix5N = true;
          } else if(img == 6){
            lvlSix6N = true;
          } else if(img == 7){
            lvlSix7N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlSix1Y = false;
                lvlSix1N = false;
                lvlSix2Y = false;
                lvlSix2N = false;
                lvlSix3Y = false;
                lvlSix3N = false;
                lvlSix4Y = false;
                lvlSix4N = false;
                lvlSix5Y = false;
                lvlSix5N = false;
                lvlSix6Y = false;
                lvlSix6N = false;
                lvlSix7Y = false;
                lvlSix7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 5){
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
                height: 8.h,
                child: Text(
                  "Excellent, You earned 12 points..",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 7;
                await updateLevel();
                lvlSix1Y = false;
                lvlSix1N = false;
                lvlSix2Y = false;
                lvlSix2N = false;
                lvlSix3Y = false;
                lvlSix3N = false;
                lvlSix4Y = false;
                lvlSix4N = false;
                lvlSix5Y = false;
                lvlSix5N = false;
                lvlSix6Y = false;
                lvlSix6N = false;
                lvlSix7Y = false;
                lvlSix7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 7));
                countdownController7.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 5){
          lvlTrue = 0;
        }
      }

      else if(clevel == 7){
        if(lvlSevenList.contains(click)){
          if(img == 1){
            lvlSeven1Y = true;
          } else if(img == 2){
            lvlSeven2Y = true;
          } else if(img == 3){
            lvlSeven3Y = true;
          } else if(img == 4){
            lvlSeven4Y = true;
          } else if(img == 5) {
            lvlSeven5Y = true;
          } else if(img == 6) {
            lvlSeven6Y = true;
          } else if(img == 7) {
            lvlSeven7Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlSeven1N = true;
          } else if(img == 2){
            lvlSeven2N = true;
          } else if(img == 3){
            lvlSeven3N = true;
          } else if(img == 4){
            lvlSeven4N = true;
          } else if(img == 5){
            lvlSeven5N = true;
          } else if(img == 6){
            lvlSeven6N = true;
          } else if(img == 7){
            lvlSeven7N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlSeven1Y = false;
                lvlSeven1N = false;
                lvlSeven2Y = false;
                lvlSeven2N = false;
                lvlSeven3Y = false;
                lvlSeven3N = false;
                lvlSeven4Y = false;
                lvlSeven4N = false;
                lvlSeven5Y = false;
                lvlSeven5N = false;
                lvlSeven6Y = false;
                lvlSeven6N = false;
                lvlSeven7Y = false;
                lvlSeven7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 5){
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
                height: 8.h,
                child: Text(
                  "Excellent, You earned 12 points..",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 8;
                await updateLevel();
                lvlSeven1Y = false;
                lvlSeven1N = false;
                lvlSeven2Y = false;
                lvlSeven2N = false;
                lvlSeven3Y = false;
                lvlSeven3N = false;
                lvlSeven4Y = false;
                lvlSeven4N = false;
                lvlSeven5Y = false;
                lvlSeven5N = false;
                lvlSeven6Y = false;
                lvlSeven6N = false;
                lvlSeven7Y = false;
                lvlSeven7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 8));
                countdownController8.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 5){
          lvlTrue = 0;
        }
      }

      else if(clevel == 8){
        if(lvlEightList.contains(click)){
          if(img == 1){
            lvlEight1Y = true;
          } else if(img == 2){
            lvlEight2Y = true;
          } else if(img == 3){
            lvlEight3Y = true;
          } else if(img == 4){
            lvlEight4Y = true;
          } else if(img == 5) {
            lvlEight5Y = true;
          } else if(img == 6) {
            lvlEight6Y = true;
          } else if(img == 7) {
            lvlEight7Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlEight1N = true;
          } else if(img == 2){
            lvlEight2N = true;
          } else if(img == 3){
            lvlEight3N = true;
          } else if(img == 4){
            lvlEight4N = true;
          } else if(img == 5){
            lvlEight5N = true;
          } else if(img == 6){
            lvlEight6N = true;
          } else if(img == 7){
            lvlEight7N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlEight1Y = false;
                lvlEight1N = false;
                lvlEight2Y = false;
                lvlEight2N = false;
                lvlEight3Y = false;
                lvlEight3N = false;
                lvlEight4Y = false;
                lvlEight4N = false;
                lvlEight5Y = false;
                lvlEight5N = false;
                lvlEight6Y = false;
                lvlEight6N = false;
                lvlEight7Y = false;
                lvlEight7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 5){
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
                height: 8.h,
                child: Text(
                  "Excellent, You earned 12 points..",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 9;
                await updateLevel();
                lvlEight1Y = false;
                lvlEight1N = false;
                lvlEight2Y = false;
                lvlEight2N = false;
                lvlEight3Y = false;
                lvlEight3N = false;
                lvlEight4Y = false;
                lvlEight4N = false;
                lvlEight5Y = false;
                lvlEight5N = false;
                lvlEight6Y = false;
                lvlEight6N = false;
                lvlEight7Y = false;
                lvlEight7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 9));
                countdownController9.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 5){
          lvlTrue = 0;
        }
      }

      else if(clevel == 9){
        if(lvlNineList.contains(click)){
          if(img == 1){
            lvlNine1Y = true;
          } else if(img == 2){
            lvlNine2Y = true;
          } else if(img == 3){
            lvlNine3Y = true;
          } else if(img == 4){
            lvlNine4Y = true;
          } else if(img == 5) {
            lvlNine5Y = true;
          } else if(img == 6) {
            lvlNine6Y = true;
          } else if(img == 7) {
            lvlNine7Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlNine1N = true;
          } else if(img == 2){
            lvlNine2N = true;
          } else if(img == 3){
            lvlNine3N = true;
          } else if(img == 4){
            lvlNine4N = true;
          } else if(img == 5){
            lvlNine5N = true;
          } else if(img == 6){
            lvlNine6N = true;
          } else if(img == 7){
            lvlNine7N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlNine1Y = false;
                lvlNine1N = false;
                lvlNine2Y = false;
                lvlNine2N = false;
                lvlNine3Y = false;
                lvlNine3N = false;
                lvlNine4Y = false;
                lvlNine4N = false;
                lvlNine5Y = false;
                lvlNine5N = false;
                lvlNine6Y = false;
                lvlNine6N = false;
                lvlNine7Y = false;
                lvlNine7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 5){
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
                height: 8.h,
                child: Text(
                  "Excellent, You earned 12 points..",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 10;
                await updateLevel();
                lvlNine1Y = false;
                lvlNine1N = false;
                lvlNine2Y = false;
                lvlNine2N = false;
                lvlNine3Y = false;
                lvlNine3N = false;
                lvlNine4Y = false;
                lvlNine4N = false;
                lvlNine5Y = false;
                lvlNine5N = false;
                lvlNine6Y = false;
                lvlNine6N = false;
                lvlNine7Y = false;
                lvlNine7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 10));
                countdownController9.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 5){
          lvlTrue = 0;
        }
      }

      else if(clevel == 10){
        if(lvlTenList.contains(click)){
          if(img == 1){
            lvlTen1Y = true;
          } else if(img == 2){
            lvlTen2Y = true;
          } else if(img == 3){
            lvlTen3Y = true;
          } else if(img == 4){
            lvlTen4Y = true;
          } else if(img == 5) {
            lvlTen5Y = true;
          } else if(img == 6) {
            lvlTen6Y = true;
          } else if(img == 7) {
            lvlTen7Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlTen1N = true;
          } else if(img == 2){
            lvlTen2N = true;
          } else if(img == 3){
            lvlTen3N = true;
          } else if(img == 4){
            lvlTen4N = true;
          } else if(img == 5){
            lvlTen5N = true;
          } else if(img == 6){
            lvlTen6N = true;
          } else if(img == 7){
            lvlTen7N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlTen1Y = false;
                lvlTen1N = false;
                lvlTen2Y = false;
                lvlTen2N = false;
                lvlTen3Y = false;
                lvlTen3N = false;
                lvlTen4Y = false;
                lvlTen4N = false;
                lvlTen5Y = false;
                lvlTen5N = false;
                lvlTen6Y = false;
                lvlTen6N = false;
                lvlTen7Y = false;
                lvlTen7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 5){
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
                height: 8.h,
                child: Text(
                  "Excellent, You earned 12 points..",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 11;
                await updateLevel();
                lvlTen1Y = false;
                lvlTen1N = false;
                lvlTen2Y = false;
                lvlTen2N = false;
                lvlTen3Y = false;
                lvlTen3N = false;
                lvlTen4Y = false;
                lvlTen4N = false;
                lvlTen5Y = false;
                lvlTen5N = false;
                lvlTen6Y = false;
                lvlTen6N = false;
                lvlTen7Y = false;
                lvlTen7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 11));
                countdownController11.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 5){
          lvlTrue = 0;
        }
      }

      else if(clevel == 11){
        if(lvlElevenList.contains(click)){
          if(img == 1){
            lvlEleven1Y = true;
          } else if(img == 2){
            lvlEleven2Y = true;
          } else if(img == 3){
            lvlEleven3Y = true;
          } else if(img == 4){
            lvlEleven4Y = true;
          } else if(img == 5) {
            lvlEleven5Y = true;
          } else if(img == 6) {
            lvlEleven6Y = true;
          } else if(img == 7) {
            lvlEleven7Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlEleven1N = true;
          } else if(img == 2){
            lvlEleven2N = true;
          } else if(img == 3){
            lvlEleven3N = true;
          } else if(img == 4){
            lvlEleven4N = true;
          } else if(img == 5){
            lvlEleven5N = true;
          } else if(img == 6){
            lvlEleven6N = true;
          } else if(img == 7){
            lvlEleven7N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlEleven1Y = false;
                lvlEleven1N = false;
                lvlEleven2Y = false;
                lvlEleven2N = false;
                lvlEleven3Y = false;
                lvlEleven3N = false;
                lvlEleven4Y = false;
                lvlEleven4N = false;
                lvlEleven5Y = false;
                lvlEleven5N = false;
                lvlEleven6Y = false;
                lvlEleven6N = false;
                lvlEleven7Y = false;
                lvlEleven7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 5){
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
                height: 8.h,
                child: Text(
                  "Excellent, You earned 12 points..",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 12;
                await updateLevel();
                lvlEleven1Y = false;
                lvlEleven1N = false;
                lvlEleven2Y = false;
                lvlEleven2N = false;
                lvlEleven3Y = false;
                lvlEleven3N = false;
                lvlEleven4Y = false;
                lvlEleven4N = false;
                lvlEleven5Y = false;
                lvlEleven5N = false;
                lvlEleven6Y = false;
                lvlEleven6N = false;
                lvlEleven7Y = false;
                lvlEleven7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 12));
                countdownController12.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 5){
          lvlTrue = 0;
        }
      }

      else if(clevel == 12){
        if(lvlTwelveList.contains(click)){
          if(img == 1){
            lvlTwelve1Y = true;
          } else if(img == 2){
            lvlTwelve2Y = true;
          } else if(img == 3){
            lvlTwelve3Y = true;
          } else if(img == 4){
            lvlTwelve4Y = true;
          } else if(img == 5) {
            lvlTwelve5Y = true;
          } else if(img == 6) {
            lvlTwelve6Y = true;
          } else if(img == 7) {
            lvlTwelve7Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlTwelve1N = true;
          } else if(img == 2){
            lvlTwelve2N = true;
          } else if(img == 3){
            lvlTwelve3N = true;
          } else if(img == 4){
            lvlTwelve4N = true;
          } else if(img == 5){
            lvlTwelve5N = true;
          } else if(img == 6){
            lvlTwelve6N = true;
          } else if(img == 7){
            lvlTwelve7N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlTwelve1Y = false;
                lvlTwelve1N = false;
                lvlTwelve2Y = false;
                lvlTwelve2N = false;
                lvlTwelve3Y = false;
                lvlTwelve3N = false;
                lvlTwelve4Y = false;
                lvlTwelve4N = false;
                lvlTwelve5Y = false;
                lvlTwelve5N = false;
                lvlTwelve6Y = false;
                lvlTwelve6N = false;
                lvlTwelve7Y = false;
                lvlTwelve7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 5){
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
                height: 8.h,
                child: Text(
                  "Excellent, You earned 12 points..",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 13;
                await updateLevel();
                lvlTwelve1Y = false;
                lvlTwelve1N = false;
                lvlTwelve2Y = false;
                lvlTwelve2N = false;
                lvlTwelve3Y = false;
                lvlTwelve3N = false;
                lvlTwelve4Y = false;
                lvlTwelve4N = false;
                lvlTwelve5Y = false;
                lvlTwelve5N = false;
                lvlTwelve6Y = false;
                lvlTwelve6N = false;
                lvlTwelve7Y = false;
                lvlTwelve7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 13));
                countdownController13.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 5){
          lvlTrue = 0;
        }
      }

      else if(clevel == 13){
        if(lvlThirteenList.contains(click)){
          if(img == 1){
            lvlThirteen1Y = true;
          } else if(img == 2){
            lvlThirteen2Y = true;
          } else if(img == 3){
            lvlThirteen3Y = true;
          } else if(img == 4){
            lvlThirteen4Y = true;
          } else if(img == 5) {
            lvlThirteen5Y = true;
          } else if(img == 6) {
            lvlThirteen6Y = true;
          } else if(img == 7) {
            lvlThirteen7Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlThirteen1N = true;
          } else if(img == 2){
            lvlThirteen2N = true;
          } else if(img == 3){
            lvlThirteen3N = true;
          } else if(img == 4){
            lvlThirteen4N = true;
          } else if(img == 5){
            lvlThirteen5N = true;
          } else if(img == 6){
            lvlThirteen6N = true;
          } else if(img == 7){
            lvlThirteen7N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlThirteen1Y = false;
                lvlThirteen1N = false;
                lvlThirteen2Y = false;
                lvlThirteen2N = false;
                lvlThirteen3Y = false;
                lvlThirteen3N = false;
                lvlThirteen4Y = false;
                lvlThirteen4N = false;
                lvlThirteen5Y = false;
                lvlThirteen5N = false;
                lvlThirteen6Y = false;
                lvlThirteen6N = false;
                lvlThirteen7Y = false;
                lvlThirteen7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 5){
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
                height: 8.h,
                child: Text(
                  "Excellent, You earned 12 points..",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 14;
                await updateLevel();
                lvlThirteen1Y = false;
                lvlThirteen1N = false;
                lvlThirteen2Y = false;
                lvlThirteen2N = false;
                lvlThirteen3Y = false;
                lvlThirteen3N = false;
                lvlThirteen4Y = false;
                lvlThirteen4N = false;
                lvlThirteen5Y = false;
                lvlThirteen5N = false;
                lvlThirteen6Y = false;
                lvlThirteen6N = false;
                lvlThirteen7Y = false;
                lvlThirteen7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 14));
                countdownController14.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 5){
          lvlTrue = 0;
        }
      }

      else if(clevel == 14){
        if(lvlFourteenList.contains(click)){
          if(img == 1){
            lvlFourteen1Y = true;
          } else if(img == 2){
            lvlFourteen2Y = true;
          } else if(img == 3){
            lvlFourteen3Y = true;
          } else if(img == 4){
            lvlFourteen4Y = true;
          } else if(img == 5) {
            lvlFourteen5Y = true;
          } else if(img == 6) {
            lvlFourteen6Y = true;
          } else if(img == 7) {
            lvlFourteen7Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlFourteen1N = true;
          } else if(img == 2){
            lvlFourteen2N = true;
          } else if(img == 3){
            lvlFourteen3N = true;
          } else if(img == 4){
            lvlFourteen4N = true;
          } else if(img == 5){
            lvlFourteen5N = true;
          } else if(img == 6){
            lvlFourteen6N = true;
          } else if(img == 7){
            lvlFourteen7N = true;
          }
          update();
          Get.defaultDialog(
              backgroundColor: white,
              title: "Wrong Answer",
              titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
              titleStyle: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                  color: red,
                  fontWeight: FontWeight.bold
              ),
              content: Container(
                alignment: Alignment.center,
                height: 10.h,
                child: Text(
                  "Opps .. Try Again!!",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                lvlTrue = 0;
                lvlFourteen1Y = false;
                lvlFourteen1N = false;
                lvlFourteen2Y = false;
                lvlFourteen2N = false;
                lvlFourteen3Y = false;
                lvlFourteen3N = false;
                lvlFourteen4Y = false;
                lvlFourteen4N = false;
                lvlFourteen5Y = false;
                lvlFourteen5N = false;
                lvlFourteen6Y = false;
                lvlFourteen6N = false;
                lvlFourteen7Y = false;
                lvlFourteen7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
          );
        }
        if(lvlTrue == 5){
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
                height: 8.h,
                child: Text(
                  "Excellent, You earned 12 points..",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 15;
                await updateLevel();
                lvlFourteen1Y = false;
                lvlFourteen1N = false;
                lvlFourteen2Y = false;
                lvlFourteen2N = false;
                lvlFourteen3Y = false;
                lvlFourteen3N = false;
                lvlFourteen4Y = false;
                lvlFourteen4N = false;
                lvlFourteen5Y = false;
                lvlFourteen5N = false;
                lvlFourteen6Y = false;
                lvlFourteen6N = false;
                lvlFourteen7Y = false;
                lvlFourteen7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                Get.to(() => const ShoppingGameScreen(level: 15));
                countdownController15.restart();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 5){
          lvlTrue = 0;
        }
      }

      else if(clevel == 15){
        if(lvlFiveteenList.contains(click)){
          if(img == 1){
            lvlFiveteen1Y = true;
          } else if(img == 2){
            lvlFiveteen2Y = true;
          } else if(img == 3){
            lvlFiveteen3Y = true;
          } else if(img == 4){
            lvlFiveteen4Y = true;
          } else if(img == 5) {
            lvlFiveteen5Y = true;
          } else if(img == 6) {
            lvlFiveteen6Y = true;
          } else if(img == 7) {
            lvlFiveteen7Y = true;
          }
          lvlTrue += 1;
          update();
        } else {
          if(img == 1){
            lvlFiveteen1N = true;
          } else if(img == 2){
            lvlFiveteen2N = true;
          } else if(img == 3){
            lvlFiveteen3N = true;
          } else if(img == 4){
            lvlFiveteen4N = true;
          } else if(img == 5){
            lvlFiveteen5N = true;
          } else if(img == 6){
            lvlFiveteen6N = true;
          } else if(img == 7){
            lvlFiveteen7N = true;
          }
          update();
          Get.defaultDialog(
            backgroundColor: white,
            title: "Wrong Answer",
            titlePadding: const EdgeInsets.only(bottom: 5, top: 5),
            titleStyle: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
                color: red,
                fontWeight: FontWeight.bold
            ),
            content: Container(
              alignment: Alignment.center,
              height: 10.h,
              child: Text(
                "Opps .. Try Again!!",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onWillPop: () async {
              lvlTrue = 0;
              lvlFiveteen1Y = false;
              lvlFiveteen1N = false;
              lvlFiveteen2Y = false;
              lvlFiveteen2N = false;
              lvlFiveteen3Y = false;
              lvlFiveteen3N = false;
              lvlFiveteen4Y = false;
              lvlFiveteen4N = false;
              lvlFiveteen5Y = false;
              lvlFiveteen5N = false;
              lvlFiveteen6Y = false;
              lvlFiveteen6N = false;
              lvlFiveteen7Y = false;
              lvlFiveteen7N = false;
              Get.back();
              Get.back();
              Get.back();
              Get.back();
              update();
              return false;
            }
          );
        }
        if(lvlTrue == 5){
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
                height: 8.h,
                child: Text(
                  "Excellent, You earned 12 points..",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Cairo",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onWillPop: () async {
                clevel = 15;
                lvlFiveteen1Y = false;
                lvlFiveteen1N = false;
                lvlFiveteen2Y = false;
                lvlFiveteen2N = false;
                lvlFiveteen3Y = false;
                lvlFiveteen3N = false;
                lvlFiveteen4Y = false;
                lvlFiveteen4N = false;
                lvlFiveteen5Y = false;
                lvlFiveteen5N = false;
                lvlFiveteen6Y = false;
                lvlFiveteen6N = false;
                lvlFiveteen7Y = false;
                lvlFiveteen7N = false;
                Get.back();
                Get.back();
                Get.back();
                Get.back();
                update();
                return false;
              }
          );
          await audioPlayer.play(AssetSource("sounds/win.mp3"));
          lvlTrue = 0;
        } else if(lvlTrue > 5){
          lvlTrue = 0;
        }
      }

    } catch(e){
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