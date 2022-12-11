import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Center(
          child: SizedBox(
            
            height: 200,
            width: 200,
            child: Container(
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: const DecorationImage(
                image:ExactAssetImage('assets/images/green1.jpeg'),
                fit:BoxFit.fill, 
                ),
              color: const Color.fromARGB(255, 240, 219, 143),
              border: Border.all(
                color: Colors.red,
                width: 10,
              ),
              )
             ),
            ),
            )
         ),
    );
  }
}