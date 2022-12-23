import 'package:flutter/material.dart';
import 'package:smartphone/screen/clock_screen.dart';
import 'package:smartphone/screen/login.dart';
import 'package:smartphone/screen/splash_screen.dart';
import 'package:smartphone/theme/theme_data.dart';
import 'screen/display.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter for class',
        initialRoute: '/',
        theme: getaApplicationTheme(),
        routes: {
          '/': (context) => const ClockScreen(),
         // '/': (context) => const SplashScreen(),
        // '/LoginPage': (context) => const LoginPage(),
          // '/': (context) => const BottomNavigation(),
          //'/': (context) => const ImageStack(),
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
