import 'package:flutter/material.dart';
import 'package:flutteranimationdemo/shared/ButtonBuilder.dart';

class RotationPage extends StatelessWidget {
  const RotationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rotation Transition Page")),
      body: Center(child: ButtonBuilder().BuildBackElivatedButton(context)),
    );
  }
}
