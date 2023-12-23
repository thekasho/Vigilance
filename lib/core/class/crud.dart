import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:vig/core/class/statusrequest.dart';

import '../functions.dart';

class Crud {

  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkNetwork()) {
        var response = await http.post(Uri.parse(linkurl), body: data).timeout(
          const Duration(seconds: 5), onTimeout: (){
          return http.Response('Error', 408);
        });
        // print(response.body);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      debugPrint("Crud Error: $e");
      return const Left(StatusRequest.serveException);
    }
  }

  Future<Either<StatusRequest, List>> getData(String linkurl) async {
    try {
      if (await checkNetwork()) {
        var response = await http.post(Uri.parse(linkurl)).timeout(const Duration(seconds: 5), onTimeout: (){
          return http.Response('Error', 408);
        });
        if (response.statusCode == 200 || response.statusCode == 201) {
          List responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      debugPrint("Crud Error: $e");
      return const Left(StatusRequest.serveException);
    }
  }

  Future<Either<StatusRequest, Map>> getMapData(String linkurl) async {
    try {
      if (await checkNetwork()) {
        var response = await http.post(Uri.parse(linkurl)).timeout(const Duration(seconds: 5), onTimeout: (){
          return http.Response('Error', 408);
        });
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      debugPrint("Crud Error: $e");
      return const Left(StatusRequest.serveException);
    }
  }

  Future<Either<StatusRequest, List>> getListData(String linkurl) async {
    try {
      if (await checkNetwork()) {

        var response = await http.post(Uri.parse(linkurl)).timeout(const Duration(seconds: 5), onTimeout: (){
          return http.Response('Error', 408);
        });
        if (response.statusCode == 200 || response.statusCode == 201) {
          List responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      debugPrint("Crud Error: $e");
      return const Left(StatusRequest.serveException);
    }
  }
}
