import 'package:flutter/material.dart';
import 'class/add.dart';
import 'class/simpleInterest.dart';
import 'class/layout.dart';
import 'class/ArithemeticScreen.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter for class',
        initialRoute: '/',
        routes: {
          '/': (context) => const ArithmeticScreen(),
          '/Arithemticoutput': (context) => const ArithmeticOutputScreen(),
          '/simpleInterest': (context) => const simpleInterest(),
        }),
  );
}
