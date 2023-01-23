
import 'package:flutter/material.dart';

class WhatsAppTheme  {
  WhatsAppTheme._();

  static const Color _lightPrimaryColor = Color(0xff075e54);
  static const Color _lightPrimaryColorDark = Color(0xFF128C7E);

  static final lightTheme = ThemeData(
    primaryColor: _lightPrimaryColor,
    primaryColorDark: _lightPrimaryColorDark,
    primaryIconTheme: const IconThemeData(
      color: Colors.white
    ),
  );
}