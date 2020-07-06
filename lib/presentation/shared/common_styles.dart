import 'package:flutter/material.dart';

class CommonStyles {
  static const BorderRadiusGeometry slidePanelRadius = BorderRadius.only(
    topLeft: Radius.circular(45),
    topRight: Radius.circular(45),
  );
  static const TextStyle totalPriceStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle nameItemStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}