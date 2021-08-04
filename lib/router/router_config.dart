import 'package:flutter_app/views/home/home_view.dart';
import 'package:flutter_app/views/login/login_view.dart';
import 'package:get/get.dart';

class RouterConfig {
  static const ROUTE_SPLASH = '/';
  static const ROUTE_DEMO = 'demo';
  static const ROUTE_MAIN = 'main';
  static const ROUTE_HOME = 'home';
  static const ROUTE_LOGIN = 'login';

  static final route = [
    GetPage(
      name: ROUTE_LOGIN,
      page: () => LoginView(),
    ),
    GetPage(
      name: ROUTE_HOME,
      page: () => HomeView(),
    ),
  ];
}