import 'package:flutter/material.dart';

class SafeareaScreen extends StatelessWidget {
  final Widget child;

  const SafeareaScreen({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: child,
      ),
    );
  }
}
