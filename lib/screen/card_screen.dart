import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  Widget displayCard(String title) {
    // GestureDetector
    return InkWell(
      onTap: () {
        MotionToast.success(description: Text("$title is clicked"))
            .show(context);
      },
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Card(
            color: Colors.yellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(title),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            displayCard('first'),
            displayCard('second'),
            displayCard('third'),
            displayCard('forth'),
            displayCard('fifth'),
            displayCard('sixth'),
            for (int i = 0; i < 10; i++) displayCard('sixth $i'),

            //for loop in dart
          ],
        ),
      ),
    ));
  }
}
