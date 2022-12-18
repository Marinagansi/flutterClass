import 'dart:math';
import 'package:flutter/material.dart';

class numgenrator extends StatefulWidget {
  const numgenrator({Key? key}) : super(key: key);

  @override
  State<numgenrator> createState() => _numgenratorState();
}

class _numgenratorState extends State<numgenrator> {
 var num1 = Random();
  var num = Random();
  int count = 1;
  int correct = 0;
  int inCorrect = 0;
  int? optionA;
  int? optionB;

 
  @override
   void initState(){
   super.initState();
    optionA = num1.nextInt(10);
    optionB = num.nextInt(10);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Game',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text('click on first num'),
                onPressed: () {
                  setState(() {
                    
                  });
                },
              ),
            ),
            Text('$num'),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text('click on '),
                onPressed: () {
                  setState(() {
                    
                  });
                },
              ),
            ),
            Text('$num1'),
            
           ],
        ),
      ),
    );
  }
}
