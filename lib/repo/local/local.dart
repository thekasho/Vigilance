part of '../api.dart';

class LocaleApi {

  static Future<bool> saveLang(String lang) async {
    try {
      // await locale.remove("lang");
      await locale.write("lang", lang);
      print("Success Save Language");
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<String?> getLang() async {
    try {
      final lang = await locale.read("lang");

      if (lang != null) {
        return lang;
      }
      debugPrint('language is null');
      return null;
    } catch (e) {
      debugPrint('login_data null $e');
      return null;
    }
  }

  static Future<bool> saveLoginData(Map loginData) async {
    try {
      await locale.remove("login_data");
      await locale.write("login_data", loginData);
      print("Success Save Login Data");
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<bool> removeLoginData() async {
    try {
      await locale.remove("login_data");
      print("Success Removed Login Data");
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<Map?> getLoginData() async {
    try {
      final users = await locale.read("login_data");

      if (users != null) {
        return users;
      }
      debugPrint('login_data null');
      return null;
    } catch (e) {
      debugPrint('login_data null $e');
      return null;
    }
  }

  static Future<bool> savePromodoroSettings(Map settings) async {
    try {
      // await locale.remove("login_data");
      await locale.write("promodoro_settings", settings);
      print("Success Save Promodoro Data");
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<Map?> getPromodoroSettings() async {
    try {
      final settings = await locale.read("promodoro_settings");

      if (settings != null) {
        return settings;
      }
      debugPrint('Promodoro null');
      return null;
    } catch (e) {
      debugPrint('Promodoro null $e');
      return null;
    }
  }

}