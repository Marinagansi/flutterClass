import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listTiles extends StatefulWidget {
  const listTiles({super.key});

  @override
  State<listTiles> createState() => _listTilesState();
}

class _listTilesState extends State<listTiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListTiles'),
        ),
        body: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.accessible_forward),
              title: const Text('Marina Gansi'),
              subtitle: const Text('Bhaktapur'),
              trailing: Wrap(
                spacing: 8,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon((Icons.star))),
                  IconButton(
                      onPressed: () {}, icon: const Icon((Icons.delete))),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.accessible_forward),
              title: Text('Ruja bhatta'),
              subtitle: Text('Bhaktapur'),
              trailing: Icon(Icons.delete),
            ),
            const ListTile(
              leading: Icon(Icons.accessible_forward),
              title: Text('Bibhusha'),
              subtitle: Text('Bhaktapur'),
              trailing: Icon(Icons.delete),
            ),
          ],
        ));
  }
}
