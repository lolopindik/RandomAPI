

import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'package:random_user_generator/logic/config/constrains/api_constarins.dart';
import 'package:random_user_generator/logic/core/model/fake_user.dart';

class ApiSevive{

  final dio = Dio();
  var uri = ApiConstants.baseUrl;

  Future<FakeUser?> getUser() async {

    try{
      final response = await dio.get(uri);
      if (response.statusCode == 200){
        Map<String, dynamic> jsonData = response.data['results'][0];
        debugPrint('\x1B[32m ApiCallBAck: ${jsonData.toString()}');
        return FakeUser.fromJson(jsonData);
      }
    }
    catch(e){
      debugPrint('\x1B[31m${e.toString()}');
    }
    return null;
  }
}