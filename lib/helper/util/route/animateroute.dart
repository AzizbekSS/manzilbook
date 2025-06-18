import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void animateRoute(Widget child,BuildContext context){
  Navigator.push(
  context,
  PageTransition(
    type: PageTransitionType.bottomToTop,
    child: child,
  ),
);
}