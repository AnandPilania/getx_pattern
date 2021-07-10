import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/modules/auth/http/controllers/auth_controller.dart';
import 'package:getx_pattern/widgets/screens/safearea_screen.dart';

class ForgotPasswordView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return SafeareaScreen(
      child: Center(
        child: Text('ForgotPasswordView'),
      ),
    );
  }
}
