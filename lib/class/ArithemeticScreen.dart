import 'package:flutter/material.dart';

class ArithmeticOutputScreen extends StatefulWidget {
  const ArithmeticOutputScreen({Key? key}) : super(key: key);

  @override
  State<ArithmeticOutputScreen> createState() => _ArithmeticOutputScreenState();
}

class _ArithmeticOutputScreenState extends State<ArithmeticOutputScreen> {
  void _continue() {
    Navigator.pushNamed(context, '/simpleInterest');
  }

  @override
  Widget build(BuildContext context) {
    final value = ModalRoute.of(context)!.settings.arguments as int?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('output'),
      ),
      body: Center(
        child: Column(
          children: [
            Text("result: $value", style: const TextStyle(fontSize: 25)),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                // button
                onPressed: () {
                  _continue();
                },
                child: const Text(
                  'Result',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
