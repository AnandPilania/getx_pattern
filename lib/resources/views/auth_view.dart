import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('AuthView'),
        ),
      ),
    );
  }
}
