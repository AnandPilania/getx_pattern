import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/widgets/screens/safearea_screen.dart';

class AuthView extends GetView {
  @override
  Widget build(BuildContext context) {
    return SafeareaScreen(
      child: Center(
        child: Text('AuthView'),
      ),
    );
  }
}
