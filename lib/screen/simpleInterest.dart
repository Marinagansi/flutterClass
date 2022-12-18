import 'package:flutter/material.dart';

// statelss-> static can't be change
class simpleInterest extends StatefulWidget {
  const simpleInterest({super.key});
  @override
  State<simpleInterest> createState() => _simpleInterestState();
}

class _simpleInterestState extends State<simpleInterest> {
  final _firstController = TextEditingController(text: '10');
  final _secondController = TextEditingController();
  final _thirdController = TextEditingController();

  final _globalKey = GlobalKey<FormState>();
  int result = 0;
  void _interest() {
    setState(() {
      result = int.parse(_firstController.text) +
          int.parse(_secondController.text) +
          int.parse(_thirdController.text);
    });
    Navigator.pushNamed(context, '/simpleInterest', arguments: result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ADD two numbers',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 10, 177, 138)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 46, 43, 47),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _firstController,
              keyboardType: TextInputType.number,
              //labeled
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter principle'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter second number';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: _secondController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter year'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter second number';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: _thirdController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter interest'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter second number';
                }
                return null;
              },
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                // button
                onPressed: () {
                  if (_globalKey.currentState!.validate()) {
                    _interest();
                  }
                },
                child: const Text(
                  'Result',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Text(
              'simple interest is :$result',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//const->compile time