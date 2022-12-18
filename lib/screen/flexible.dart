import 'package:flutter/material.dart';

class flexible extends StatefulWidget {
  const flexible({Key? key}) : super(key: key);

  @override
  State<flexible> createState() => _flexibleState();
}

class _flexibleState extends State<flexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 400,
            color: Colors.yellow,
            child: const Text(
              '1',
              style: TextStyle(fontSize: 37),
            ),
          ),
        ),
        Expanded(
          
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 200,
            color: Colors.orange,
            child: const Text('2', style: TextStyle(fontSize: 37)),
          ),
        ),
      ],
    ));
  }
}


//responsive-scrollhildview, flexible widget