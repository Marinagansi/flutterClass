import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 400,
          color: Colors.yellow,
        ),
        Positioned(
          top: 1,
          right: 1,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ),
        Positioned(
          bottom: -50,
          right: 100,
          child: Container(
            width: 100,
            height: 100,
            color: const Color.fromARGB(255, 129, 107, 106),
          ),
        ),
      ],
    ));
  }
}
