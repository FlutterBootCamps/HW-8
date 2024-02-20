import 'package:flutter/material.dart';

extension Screen on BuildContext {
  getWight() {
    return MediaQuery.of(this).size.width;
  }

  getHeight() {
    return MediaQuery.of(this).size.height;
  }
}
