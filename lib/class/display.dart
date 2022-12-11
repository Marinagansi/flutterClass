import 'package:flutter/material.dart';
import 'package:smartphone/model/student.dart';

class studentDisplay extends StatefulWidget {
  const studentDisplay({Key? key}) : super(key: key);

  @override
  State<studentDisplay> createState() => _studentDisplayState();
}

class _studentDisplayState extends State<studentDisplay> {
  List<Student> lstStudent = [];

  @override
  void didChangeDependencies() {
    lstStudent = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('student details'),
        ),
        body: lstStudent.isNotEmpty
            ? ListView.builder(
                itemCount: lstStudent.length,
                itemBuilder: (Buildecontext, int index) {
                  return ListTile(
                    title: Text(lstStudent[index].fname! + '' + lstStudent[index].lname! ),
                    subtitle: Text(lstStudent[index].address!),
                    trailing: Wrap(
                      spacing: 8,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon((Icons.edit))),
                        IconButton(
                            onPressed: () {
                              //delete student
                              setState(() {
                                lstStudent.removeAt(index);
                              });
                            },
                            icon: const Icon((Icons.delete))),
                      ],
                    ),
                  );
                },
              )
            : const Center(child: Text('No data')));
  }
}
