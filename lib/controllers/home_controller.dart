import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/base_controller.dart';
import 'package:flutter_app/models/user/data.dart';
import 'package:flutter_app/models/user/user_model.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {

  var userListData = List<UserModel>().obs;
  var count = 0.obs;

  increment() {
    count++;
    _apiGetUserList();
  }

  @override
  void onInit() {
    _apiGetUserList();
    super.onInit();
  }

  void _apiGetUserList() async {
    UserModel data = UserModel(id:1, name: "Tuan");
    userListData.add(data);
  }
}