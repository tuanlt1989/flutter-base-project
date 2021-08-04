import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/base_controller.dart';
import 'package:flutter_app/models/response/api_response.dart';
import 'package:flutter_app/models/user/login_filter.dart';
import 'package:flutter_app/models/user/user_model.dart';
import 'package:flutter_app/repositories/user_repository.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  UserRepository _userRepository = UserRepository.getInstance();
  var userModel = UserModel().obs;
  TextEditingController emailTextController;
  TextEditingController passwordTextController;

  @override
  void onInit() {
    super.onInit();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }

  /// Login
  void login() async {
    Get.dialog(Center(child: CircularProgressIndicator()),
        barrierDismissible: false);
    LoginFilter filter = LoginFilter("0789740506", "123123", "0789740506");
    // await _userRepository.login(filter);
    _userRepository.login(filter).then((it) {
      dynamic weatherResponse = it;
      // userModel = UserModel.fromJson(weatherResponse.body.data).obs;
      if (weatherResponse.body.errorCode == 200) {
        Get.offNamed('/home');
      } else {
        handleError(weatherResponse.body.errorCode);
      }

    }).catchError((Object obj) {
      handleNetWorkError(obj);
    });
  }

  @override
  void onClose() {
    emailTextController?.dispose();
    passwordTextController?.dispose();
    super.onClose();
  }
}
