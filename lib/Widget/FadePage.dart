import 'package:flutter/material.dart';
import 'package:flutteranimationdemo/shared/ButtonBuilder.dart';

class FadePage extends StatelessWidget {
  const FadePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fade Transition Page")),
      body: Center(child: ButtonBuilder().BuildBackElivatedButton(context)),
    );
  }
}
