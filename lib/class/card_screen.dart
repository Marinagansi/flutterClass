import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  Widget displayCard(String title) {
    return SizedBox(
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

            //for loop in dart
          ],
        ),
      ),
    ));
  }
}
