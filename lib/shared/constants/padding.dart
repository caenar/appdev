import 'package:flutter/material.dart';

class AppPadding {
  // tiny padding
  static const double xs = 4;

  // small padding, e.g., inner content
  static const double sm = 8;

  // medium padding, e.g., sections
  static const double md = 12;

  // large padding, e.g., whole screen content
  static const double lg = 20;

  // extra large, top/bottom for big gaps
  static const double xl = 32;

  // EdgeInsets helpers
  static const EdgeInsets allSm = EdgeInsets.all(sm);
  static const EdgeInsets allMd = EdgeInsets.all(md);
  static const EdgeInsets allLg = EdgeInsets.all(lg);
  static const EdgeInsets horizontalLg = EdgeInsets.symmetric(horizontal: lg);
  static const EdgeInsets verticalLg = EdgeInsets.symmetric(vertical: lg);
}

// .. whatever they said ..