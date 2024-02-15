import 'package:flutter/material.dart';

const Color _customColor = Color(0x0000194E);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blueGrey,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class Apptheme {
  final int selectedColor;
  Apptheme({
    this.selectedColor = 1,
  }) : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        brightness: Brightness.dark);
  }
}
