import 'package:flutter/material.dart';


class Screen_container extends StatefulWidget {
  const Screen_container({super.key});

  @override
  State<Screen_container> createState() => _Screen_containerState();
}

class _Screen_containerState extends State<Screen_container> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.centerRight,
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height:200,
            child: const Text('I am a container'),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 240, 219, 143),
              border: Border.all(
                color: Colors.red,
                width: 10,
                
              )
             ),
            ),
          ),
        ),
      );
  }
}