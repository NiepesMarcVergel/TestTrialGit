import 'package:flutter/material.dart';

class PageNavigator {
  void goTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(builder: (context) => page),
    );
  }

  void goBack(BuildContext context) {
    Navigator.pop(context);
  }

  // Fade Transition
  void goToWithFade(BuildContext context, Widget page) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (, _, _) => page,
        transitionsBuilder: (, animation, _, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  // Slide Transition (from bottom)
  void goToWithSlide(BuildContext context, Widget page) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (, _, _) => page,
        transitionsBuilder: (, animation, _, child) {
          final offsetAnimation =
              Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
                  .animate(animation);
          return SlideTransition(position: offsetAnimation, child: child);
        },
      ),
    );
  }

  // Rotation Transition
  void goToWithRotation(BuildContext context, Widget page) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (, _, _) => page,
        transitionsBuilder: (, animation, _, child) {
          return RotationTransition(turns: animation, child: child);
        },
      ),
    );
  }
}