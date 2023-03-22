import 'dart:convert';
import 'dart:developer';

import 'package:cybercyld/models/login_request_model.dart';
import 'package:cybercyld/models/login_response_model.dart';
import 'package:cybercyld/models/register_request_model.dart';
import 'package:cybercyld/models/register_response_model.dart';
import 'package:http/http.dart' as http;

import '../../config.dart';
import 'shared_service.dart';

class APIService {
  static var client = http.Client();

  static Future<Map<String, dynamic>> login(
    LoginRequestModel model,
  ) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.parse(
      Config.apiURL + Config.loginAPI,
    );

    log('login req body - ${model.toJson()}');
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    log('login res body - ${response.body} , status code - ${response.statusCode}');
    if (response.statusCode == 200) {
      await SharedService.setLoginDetails(
        loginResponseJson(
          response.body,
        ),
      );
      return ({
        "success": true,
        "message": "Login success!",
      });
    } else {
      final msg = json.decode(response.body)['msg'];
      return ({
        "success": false,
        "message": msg,
      });
    }
  }

  static Future<RegisterResponseModel> register(
    RegisterRequestModel model,
  ) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.parse(
      Config.apiURL + Config.registerAPI,
    );
    log('request body - ${model.toJson()},');
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    log('response body - ${response.body}, status - ${response.statusCode}');
    final res = json.decode(response.body);
    return RegisterResponseModel(
      message: res['msg'],
      success: response.statusCode==200,
    );
  }

  static Future<String> getUserProfile() async {
    var loginDetails = await SharedService.loginDetails();

    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
      'Authorization': 'Basic ${loginDetails!.data.token}'
    };

    var url = Uri.http(Config.apiURL, Config.userProfileAPI);

    var response = await client.get(
      url,
      headers: requestHeaders,
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}
