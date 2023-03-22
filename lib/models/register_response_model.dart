import 'dart:convert';

RegisterResponseModel registerResponseJson(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

class RegisterResponseModel {
  RegisterResponseModel({
    this.message,
    this.data,
    required this.success,
  });
  final String? message;
  final Data? data;
  final bool success;

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    return RegisterResponseModel(
      message: json['msg'],
      data: json['data'] != null ? Data.fromJson(json['data']) : null,
      success: json['success'],
    );
  }

  Map<String, dynamic> toJson() {
    final mdata = <String, dynamic>{};
    mdata['msg'] = message;
    mdata['data'] = data?.toJson();
    mdata['success'] = success;
    return mdata;
  }
}

class Data {
  Data({
    required this.username,
    required this.email,
    required this.date,
    required this.id,
  });
  late final String username;
  late final String email;
  late final String date;
  late final String id;

  Data.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    date = json['date'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    data['date'] = date;
    data['id'] = id;
    return data;
  }
}