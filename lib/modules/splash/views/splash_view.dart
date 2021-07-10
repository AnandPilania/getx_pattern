import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/modules/splash/controllers/splash_controller.dart';
import 'package:getx_pattern/widgets/screens/safearea_screen.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeareaScreen(
      child: Center(
        child: Text('SplashView'),
      ),
    );
  }
}
