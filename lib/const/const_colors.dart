import 'package:flutter/material.dart';

class ConstColors {
  final Color _primaryThemeColor = const Color.fromRGBO(0, 77, 92, 100);
  final Color _secondaryThemeColor = const Color.fromARGB(255, 236, 234, 234);

  Color getPrimaryThemeColor() {
    return _primaryThemeColor;
  }

  Color getSecondaryThemeColor() {
    return _secondaryThemeColor;
  }
}
