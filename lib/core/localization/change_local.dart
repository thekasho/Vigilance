import 'dart:ui';

import 'package:get/get.dart';

import '../../repo/api.dart';

class LocalCont extends GetxController {
  Locale? language;

  changeLang(String lang) async {
    try {
      Locale locale = Locale(lang);
      await LocaleApi.saveLang(lang);
      Get.updateLocale(locale);
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void onInit() async {
    String? lang = await LocaleApi.getLang();
    if (lang == "ar") {
      language = const Locale("ar");
    } else if (lang == "en"){
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      await LocaleApi.saveLang("ar");
    }
    update();
    super.onInit();
  }

}