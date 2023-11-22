import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../app_links.dart';
import '../../../core/class/statusrequest.dart';
import '../../../core/data/remote/requests.dart';
import '../../../helpers/helpers.dart';
import '../../../repo/api.dart';

abstract class StdToDoCont extends GetxController {
  checkNetwork();
  getTasks();
  getImages();
  addTask();
  markDone(int id);
}
class StdToDoContImp extends StdToDoCont {
  Requests requests = Requests(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController title;
  late TextEditingController desc;

  StatusRequest statusRequest = StatusRequest.none;

  bool isConnected = false;
  List tasks = [];
  List images = [];
  int selectedImage = 0;
  String email = "";

  @override
  checkNetwork() async {
    isConnected = await InternetConnectionChecker().hasConnection;
  }

  @override
  getImages() async {
    try {
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

      var allImages = await requests.getData(ApiLinks.getTodoImages);
      if(allImages.length >= 1){
        images = [];
        images.addAll(allImages);
        update();
      }
    } catch(e) {
      print("Error: $e");
    }
  }

  @override
  getTasks() async {
    try {
      statusRequest = StatusRequest.loading;
      update();

      var loginData = await LocaleApi.getLoginData();

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

      if(loginData != null){
        email = loginData['email'];
        Map taskRequest = {
          'user_email': loginData['email'],
        };
        var tasksResponse = await requests.postData(taskRequest, ApiLinks.getTasks);
        if(tasksResponse['statue'] == "success" && tasksResponse['result'].length >= 1){
          tasks = [];
          tasks.addAll(tasksResponse['result']);
          statusRequest = StatusRequest.success;
          update();
        }
      }
    } catch(e) {
      print("Error: $e");
    }
  }

  @override
  addTask() async {
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

        Map taskData = {
          'title': title.text,
          'desc': desc.text,
          'image': selectedImage.toString(),
          'creator_type': "0",
          'creator_email': email
        };
        var save = await requests.postData(taskData, ApiLinks.addTask);

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
          if(save['message'] == "success"){
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
                "Task Added",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
              onWillPop: () async {
                Get.back();
                return false;
              }
            );
            await getTasks();
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
            );
          }
        }
      }
    } catch(e) {
      print("Error: $e");
    }
  }

  @override
  markDone(id) async {
    try {

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

      Map taskData = {
        'task_id': id.toString(),
      };
      var save = await requests.postData(taskData, ApiLinks.updateTaskStatue);

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
        if(save['result'] == "updated"){
          await getTasks();
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
                "Task Updated",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Cairo",
                ),
              ),
              onWillPop: () async {
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
          );
        }
      }
    } catch(e) {
      print("Error: $e");
    }
  }

  @override
  void onInit() async {
    await checkNetwork();
    getTasks();
    title = TextEditingController();
    desc = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    title.dispose();
    desc.dispose();
    super.dispose();
  }
}