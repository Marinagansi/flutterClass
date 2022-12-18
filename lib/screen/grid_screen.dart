import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class grid_screen extends StatefulWidget {
  const grid_screen({super.key});

  @override
  State<grid_screen> createState() => _grid_screenState();
}

//gridview for gallery
class _grid_screenState extends State<grid_screen> {
  @override
  Widget build(BuildContext context) {
    int? result;
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [
          // Container(
          //     alignment: Alignment.center,
          //     color: Colors.orange,
          //     child: const Text('1')),
          // Container(
          //     alignment: Alignment.center,
          //     color: Colors.orange,
          //     child: const Text('2')),
          for (int i = 1; i < 11; i++) ...{
            ElevatedButton(onPressed: () {
              setState(() {
                result=i;
              });
            }, child: Text('$i'))
          }
        ],
      ),
    );
  }
}
