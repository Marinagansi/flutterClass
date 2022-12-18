import 'package:flutter/material.dart';

class ImageStack extends StatefulWidget {
  const ImageStack({super.key});

  @override
  State<ImageStack> createState() => _ImageStackState();
}

class _ImageStackState extends State<ImageStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
          child: Stack(
            children: [
              Container(
                child: Image.network('https://picsum.photos/250?image=9'),
              ),
              const Positioned(
                top: 1,
                right: 1,
                child: SizedBox(
                  child: Icon(Icons.edit),
                ),
              ),
              const Positioned(
                bottom: 1,
                left: 1,
                child: SizedBox(
                  child: Icon(Icons.favorite),
                ),
              ),
            ],
          ),
          
        ),
      ],
    ));
  }
}
