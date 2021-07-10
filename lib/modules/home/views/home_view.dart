import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/modules/home/controllers/home_controller.dart';
import 'package:getx_pattern/widgets/screens/safearea_screen.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeareaScreen(
      child: Center(
        child: Text('HomeView'),
      ),
    );
  }
}
