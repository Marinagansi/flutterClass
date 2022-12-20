import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
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
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              // button
              onPressed: () {},
              child: const Text(
                'login',
                style: TextStyle(
                  fontFamily: 'OPenSans Italic',
                  fontSize: 30,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              // button
              onPressed: () {},
              child: const Text(
                'sign up',
                style: TextStyle(
                  fontFamily: 'OPenSans Italic',
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
