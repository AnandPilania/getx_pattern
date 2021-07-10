import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/routes.dart';

class RootMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return RouteSettings(name: Routes.SPLASH);
  }
}
