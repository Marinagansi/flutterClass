import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class columnScreen extends StatefulWidget {
  const columnScreen({super.key});

  @override
  State<columnScreen> createState() => _columnScreenState();
}

class _columnScreenState extends State<columnScreen> {
 String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('column'),
      ),
      body: Container(
          color: Colors.yellow,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //start,center,spaceBetween, End, spaceEvenly, spaceAround
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Button')),
              ElevatedButton(onPressed: () {}, child: const Text('Button')),
              ElevatedButton(onPressed: () {}, child: const Text('Button')),
              

            //radio
            RadioListTile(
          title: Text("Male"),
          value: "male", 
          groupValue: gender, 
          onChanged: (value){
            setState(() {
                gender = value.toString();
            });
          },
      ),

      RadioListTile(
          title: Text("Female"),
          value: "female", 
          groupValue: gender, 
          onChanged: (value){
            setState(() {
                gender = value.toString();
            });
          },
      ),
            ],
          )),
    );
  }
}
