import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/login_controller.dart';
import 'package:flutter_app/router/router_config.dart';
import 'package:flutter_app/views/base/base_view.dart';
import 'package:get/get.dart';

class LoginView extends BaseView {
  final LoginController _loginController = Get.put(LoginController()); // Abc
  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }

  @override
  Widget renderAppBar() {
    return AppBar(
      title: Text(
        'Ok Login',
      ),
    );
  }

  @override
  Widget renderBody() {
    return MaterialButton(
        color: Colors.deepOrangeAccent,
        splashColor: Colors.white,
        minWidth: Get.width / 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'LOGIN',
        ),
        onPressed: () {
          _loginController.goTo(RouterConfig.ROUTE_HOME);
        });
  }
}
