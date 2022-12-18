import 'package:flutter/material.dart';

class RadionButton extends StatefulWidget {
  const RadionButton({Key? key}) : super(key: key);

  @override
  State<RadionButton> createState() => _RadionButtonState();
}

class _RadionButtonState extends State<RadionButton> {
  int? _val = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'choose one',
          style: TextStyle(fontSize: 34),
        ),
      ),
      body: Column(

        children: [
          RadioListTile(
            title: const Text("one"),
            value: 1,
            groupValue: _val,
            onChanged: (val) {
              setState(() {
                _val = val;
              });
            },
          
          ),
          RadioListTile(
            title: const Text("Two"),
            value: 2,
            groupValue: _val,
            onChanged: (val) {
              setState(() {
                _val = val;
               
              });
            },
          ),
        ],
      ),
    );
  }
}
