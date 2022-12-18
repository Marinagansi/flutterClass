import 'package:flutter/material.dart';
import 'screen/display.dart';
import 'screen/calculator.dart';
import 'screen/grid_screen.dart';
import 'screen/datatable_Screen.dart';
import 'screen/stack_screen.dart';
import 'screen/image_stack.dart';
import 'screen/bottom_navigation.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter for class',
        initialRoute: '/',
        routes: {
          '/': (context) => const BottomNavigation(),
          // '/': (context) => const ImageStack(),
          // '/': (context) => const StackScreen(),
          //'/': (context) => const datatableScreen(),
          // '/': (context) => const CalculatorScreen(),
          // '/': (context) => const grid_screen(),
          //'/': (context) => const CardScreen(),
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
