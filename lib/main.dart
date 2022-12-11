import 'package:flutter/material.dart';
import 'class/card_screen.dart';
import 'class/display.dart';
import 'class/student_screen.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter for class',
        initialRoute: '/',
        routes: {
          '/': (context) => const CardScreen(),
          //'/': (context) => const RowsColumn(),
          // '/': (context) => const SnackBarScreen(),
          // '/': (context) => const flexible(),
          //'/': (context) => const ImageScreen(),
          //'/': (context) => const StudentDetailsScreen(),
          '/displayStudent': ((context) => const studentDisplay()),
          // '/': (context) => const listTiles(),
          //'/': (context) => const columnScreen(),
          // '/': (context) => const ArithmeticScreen(),
          //'/': (context) => const RadionButton(),
          // '/Arithemticoutput': (context) => const ArithmeticOutputScreen(),
          // '/simpleInterest': (context) => const simpleInterest(),
        }),
  );
}
