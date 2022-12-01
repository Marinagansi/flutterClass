import 'package:flutter/material.dart';

// statelss-> static can't be change
class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final _firstController = TextEditingController(text: '1');
  final _secondController = TextEditingController();
  int result = 0;

  final _globalKey = GlobalKey<FormState>();

  void _add() {
    setState(() {
      result =
          int.parse(_firstController.text) + int.parse(_secondController.text);
    });
    Navigator.pushNamed(context, '/Arithemticoutput', arguments: result);
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
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              TextFormField(
                  controller: _firstController,
                  keyboardType: TextInputType.number,
                  //labeled
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Enter number'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter first number';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                  controller: _secondController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Enter number'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter second number';
                    }
                    return null;
                  }),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  // button
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      _add();
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
                'calculation is $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//const->compile time