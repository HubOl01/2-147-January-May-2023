import 'package:flutter/material.dart';

class EnterExitRoute extends PageRouteBuilder {
  final Widget enterPage;
  // final Widget exitPage;
  EnterExitRoute({
    // required this.exitPage, 
  required this.enterPage})
      : super(
          transitionDuration: const Duration(milliseconds: 250),
              reverseTransitionDuration: const Duration(milliseconds: 250),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              enterPage,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
            //   Stack(
            // children: <Widget>[
            //   SlideTransition(
            //     position: Tween<Offset>(
            //       begin: Offset.zero,
            //       end: const Offset(-1.0, 0.0),
            //     ).animate(animation),
            //     child: exitPage,
            //   ),
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: enterPage,
              )
            // ],
          // ),
        );
}