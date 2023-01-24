import 'package:flutter/material.dart';

class WhatsAppTheme {
  WhatsAppTheme._();

  //whatsapp color pallete
  static const Color white = Colors.white;
  static const Color tealGreen = Color(0xFF128C7E);
  static const Color tealGreenDark = Color(0xFF075E54);
  static const Color lightGreen = Color(0xFF25D366);
  static const Color checkmarkBlue = Color(0xFF34B7F1);
  static const Color outgoingChatBubble = Color(0xFFdcf8c6);
  static const Color chatBackground = Color(0xFFece5dd);

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: tealGreen,
    ),
    primaryColor: tealGreen,
    primaryColorDark: tealGreenDark,
    primaryIconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: const AppBarTheme(
      backgroundColor: white,
      foregroundColor: tealGreen,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: lightGreen),
    ),
  );
}
