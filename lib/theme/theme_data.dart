import 'package:flutter/material.dart';

ThemeData getaApplicationTheme() {
  return ThemeData(
      primarySwatch: Colors.orange,
      scaffoldBackgroundColor: Colors.grey[200],
      fontFamily: ' OPenSans Italic',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: ' MontserratAlternattes Black'),
          backgroundColor: Colors.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80),
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Color(0xfffed9728),
          elevation: 4,
          shadowColor: Color.fromARGB(255, 147, 133, 115),
          titleTextStyle: TextStyle(
            fontSize: 16,
            color:Colors.black,
            fontWeight: FontWeight.bold,
          )));
}
