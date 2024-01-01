import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../core/class/statusrequest.dart';
import '../../core/data/remote/requests.dart';
import '../../repo/api.dart';

abstract class StdMeditationCont extends GetxController {
  checkNetwork();
  playMusic(String file, int type);
  updateLevel(int sound);
  getLevel();
}
class StdMeditationContImp extends StdMeditationCont {
  Requests requests = Requests(Get.find());
  AudioPlayer audioPlayer = AudioPlayer();

  StatusRequest statusRequest = StatusRequest.none;

  bool isConnected = false;
  String email = "";
  int level = 1;
  int clevel = 0;
  bool isPlaying1 = false;
  bool isPlaying2 = false;
  bool isPlaying3 = false;
  bool isPlaying4 = false;
  bool isPlaying5 = false;
  bool isPlaying6 = false;
  bool isPlaying7 = false;
  bool isPlaying8 = false;
  bool isPlaying9 = false;
  bool isPlaying10 = false;
  bool isPlaying11 = false;
  bool isPlaying12 = false;

  int f1 = 0;
  int f2 = 0;
  int f3 = 0;
  int f4 = 0;
  int f5 = 0;
  int f6 = 0;
  int f7 = 0;
  int f8 = 0;
  int f9 = 0;
  int f10 = 0;
  int f11 = 0;
  int f12 = 0;

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  getLevel() async {
    try {
      var medLevel = await LocaleApi.getMedData();
      print(medLevel);
      if(medLevel!=null){
        level = medLevel['level'];
        update();
      }
    } catch(e){
      print("Error: $e");
    }
  }

  @override
  updateLevel(sound) async {
    try {
      var medLevel = await LocaleApi.getMedData();
      print(medLevel);
      if(medLevel != null) {
        if(sound == 1){
          if(medLevel['sound1'] == 0){
            f1 = 1;
          } else {
            f1 = medLevel['sound1'];
          }
        } else if(sound == 2){
          if(medLevel['sound2'] == 0){
            f2 = 1;
          } else {
            f2 = medLevel['sound2'];
          }
        } else if(sound == 3){
          if(medLevel['sound3'] == 0){
            f3 = 1;
          } else {
            f3 = medLevel['sound3'];
          }
        } else if(sound == 4){
          if(medLevel['sound4'] == 0){
            f4 = 1;
          } else {
            f4 = medLevel['sound4'];
          }
        } else if(sound == 5){
          if(medLevel['sound5'] == 0){
            f5 = 1;
          } else {
            f5 = medLevel['sound5'];
          }
        } else if(sound == 6){
          if(medLevel['sound6'] == 0){
            f6 = 1;
          } else {
            f6 = medLevel['sound6'];
          }
        } else if(sound == 7){
          if(medLevel['sound7'] == 0){
            f7 = 1;
          } else {
            f7 = medLevel['sound7'];
          }
        } else if(sound == 8){
          if(medLevel['sound8'] == 0){
            f8 = 1;
          } else {
            f8 = medLevel['sound8'];
          }
        } else if(sound == 9){
          if(medLevel['sound9'] == 0){
            f9 = 1;
          } else {
            f9 = medLevel['sound9'];
          }
        } else if(sound == 10){
          if(medLevel['sound10'] == 0){
            f10 = 1;
          } else {
            f10 = medLevel['sound10'];
          }
        }
        if(f1 == 1 && f2 == 1 && f3 == 1 && f4 == 1){
          level = 2;
        } else {
          level = 1;
        }
        if(f5 == 1 && f6 == 1 && f7 == 1 && f8 == 1){
          level = 3;
        }
        if(f8 == 1 && f10 == 1 && f11 == 1 && f12 == 1){
          level = 4;
        }
        Map medData = {
          'sound1': f1,
          'sound2': f2,
          'sound3': f3,
          'sound4': f4,
          'sound5': f5,
          'sound6': f6,
          'sound7': f7,
          'sound8': f8,
          'level': level,
        };
        var save = await LocaleApi.saveMedData(medData);
        update();
      } else {
        if(sound == 1){
          f1 = 1;
        } else if(sound == 2){
          f2 = 1;
        } else if(sound == 3){
          f3 = 1;
        } else if(sound == 4){
          f4 = 1;
        }
        Map medData = {
          'sound1': f1,
          'sound2': f2,
          'sound3': f3,
          'sound4': f4,
          'sound5': 0,
          'sound6': 0,
          'sound7': 0,
          'sound8': 0,
          'level': 1,
        };
        var save = await LocaleApi.saveMedData(medData);
        update();
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  playMusic(file, type) async {
    if(audioPlayer.state == PlayerState.paused || audioPlayer.state == PlayerState.stopped){
      await audioPlayer.play(AssetSource("sounds/med/$file"));
      if(type == 1){
        isPlaying1 = true;
        isPlaying2 = false;
        isPlaying3 = false;
        isPlaying4 = false;
        isPlaying5 = false;
        isPlaying6 = false;
        isPlaying7 = false;
        isPlaying8 = false;
        isPlaying9 = false;
        isPlaying10 = false;
        updateLevel(1);
        update();
      } else if(type == 2){
        isPlaying2 = true;
        isPlaying1 = false;
        isPlaying3 = false;
        isPlaying4 = false;
        isPlaying5 = false;
        isPlaying6 = false;
        isPlaying7 = false;
        isPlaying8 = false;
        isPlaying9 = false;
        isPlaying10 = false;
        updateLevel(2);
        update();
      } else if(type == 3){
        isPlaying3 = true;
        isPlaying1 = false;
        isPlaying2 = false;
        isPlaying4 = false;
        isPlaying5 = false;
        isPlaying6 = false;
        isPlaying7 = false;
        isPlaying8 = false;
        isPlaying9 = false;
        isPlaying10 = false;
        updateLevel(3);
        update();
      } else if(type == 4){
        isPlaying4 = true;
        isPlaying1 = false;
        isPlaying2 = false;
        isPlaying3 = false;
        isPlaying5 = false;
        isPlaying6 = false;
        isPlaying7 = false;
        isPlaying8 = false;
        isPlaying9 = false;
        isPlaying10 = false;
        updateLevel(4);
        update();
      } else if(type == 5){
        isPlaying5 = true;
        isPlaying1 = false;
        isPlaying2 = false;
        isPlaying3 = false;
        isPlaying4 = false;
        isPlaying6 = false;
        isPlaying7 = false;
        isPlaying8 = false;
        isPlaying9 = false;
        isPlaying10 = false;
        updateLevel(5);
        update();
      } else if(type == 6){
        isPlaying6 = true;
        isPlaying1 = false;
        isPlaying2 = false;
        isPlaying3 = false;
        isPlaying4 = false;
        isPlaying5 = false;
        isPlaying7 = false;
        isPlaying8 = false;
        isPlaying9 = false;
        isPlaying10 = false;
        updateLevel(6);
        update();
      } else if(type == 7){
        isPlaying7 = true;
        isPlaying1 = false;
        isPlaying2 = false;
        isPlaying3 = false;
        isPlaying4 = false;
        isPlaying5 = false;
        isPlaying6 = false;
        isPlaying8 = false;
        isPlaying9 = false;
        isPlaying10 = false;
        updateLevel(7);
        update();
      } else if(type == 8){
        isPlaying8 = true;
        isPlaying1 = false;
        isPlaying2 = false;
        isPlaying3 = false;
        isPlaying4 = false;
        isPlaying5 = false;
        isPlaying6 = false;
        isPlaying7 = false;
        isPlaying9 = false;
        isPlaying10 = false;
        updateLevel(8);
        update();
      } else if(type == 9){
        isPlaying9 = true;
        isPlaying1 = false;
        isPlaying2 = false;
        isPlaying3 = false;
        isPlaying4 = false;
        isPlaying5 = false;
        isPlaying6 = false;
        isPlaying7 = false;
        isPlaying8 = false;
        isPlaying10 = false;
        updateLevel(9);
        update();
      } else if(type == 10){
        isPlaying10 = true;
        isPlaying1 = false;
        isPlaying2 = false;
        isPlaying3 = false;
        isPlaying4 = false;
        isPlaying5 = false;
        isPlaying6 = false;
        isPlaying7 = false;
        isPlaying8 = false;
        isPlaying9 = false;
        updateLevel(10);
        update();
      }
    } else if(audioPlayer.state == PlayerState.playing){
      await audioPlayer.stop();
      if(type == 1){
        isPlaying1 = false;
        update();
      } else if(type == 2){
        isPlaying2 = false;
        update();
      } else if(type == 3){
        isPlaying3 = false;
        update();
      } else if(type == 4){
        isPlaying4 = false;
        update();
      } else if(type == 5){
        isPlaying5 = false;
        update();
      } else if(type == 6){
        isPlaying6 = false;
        update();
      } else if(type == 7){
        isPlaying7 = false;
        update();
      } else if(type == 8){
        isPlaying8 = false;
        update();
      } else if(type == 9){
        isPlaying9 = false;
        update();
      } else if(type == 10){
        isPlaying10 = false;
        update();
      }
    }
    print(audioPlayer.state);
  }

  @override
  void onReady() async {
    super.onReady();
    await checkNetwork();
    await getLevel();
    statusRequest = StatusRequest.success;
    update();
  }

  @override
  void dispose() {
    super.dispose();

  }
}