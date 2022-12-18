import 'package:flutter/material.dart';

class RowsColumn extends StatefulWidget {
  const RowsColumn({Key? key}) : super(key: key);

  @override
  State<RowsColumn> createState() => _RowsColumnState();
}

class _RowsColumnState extends State<RowsColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and column'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.yellow,
                    child: const Text(
                      'conatiner 1',
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.orange,
                    child: const Text(
                      'container 2',
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.red,
                    child: const Text('container 3'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: const Text('container 3'),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 230, 189, 186),
              child: const Text('container 3'),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Colors.green,
              child: const Text('container 3'),
            ),
          ),
        ],
      ),
    );
  }
}
