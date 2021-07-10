import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/core/helpers.dart';
import 'package:getx_pattern/routes.dart';

class AuthenticatedMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return user() != null ? null : RouteSettings(name: Routes.AUTH);
  }
}
