import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:motion_toast/motion_toast.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  _showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          "hello",
        ),
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
            label: 'ok', onPressed: () {}, textColor: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('scaffold'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  _showSnackBar();
                },
                child: const Text('show snack bar'),
              ),
              ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "hello from flutter",
                    toastLength: Toast.LENGTH_SHORT,
                  );
                },
                child: const Text('flutter toast'),
              ),
              ElevatedButton(
                onPressed: () {
                  MotionToast.success(
                    description: const Text("Succesful"),
                    animationDuration: Duration.zero,
                  ).show(context);
                },
                child: const Text('motion toast'),
              ),
              ElevatedButton(
                onPressed: () {
                  MotionToast.error(
                    description: const Text("Error msg"),
                  ).show(context);
                },
                child: const Text('motion toast 2'),
              ),
            ],
          ),
        ));
  }
}
