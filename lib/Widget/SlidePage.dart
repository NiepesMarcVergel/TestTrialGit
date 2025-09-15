import 'package:flutter/material.dart';
import 'package:flutteranimationdemo/shared/ButtonBuilder.dart';

class SlidePage extends StatelessWidget {
  const SlidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Slide Transition Page")),
      body: Center(child: ButtonBuilder().BuildBackElivatedButton(context)),
    );
  }
}
