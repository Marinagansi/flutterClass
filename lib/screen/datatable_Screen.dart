import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:smartphone/model/student.dart';

class datatableScreen extends StatefulWidget {
  const datatableScreen({Key? key}) : super(key: key);

  @override
  State<datatableScreen> createState() => _datatableScreenState();
}

class _datatableScreenState extends State<datatableScreen> {
  List<Student> lstStudent = [
    Student(fname: 'Marina', age: 11),
    Student(fname: 'rina', age: 11),
    Student(fname: 'Mina', age: 11)
  ];

  _showDialogAlert(BuildContext context, Student student) {
    //set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Delete?"),
      content: Text("sure? ${student.fname}?? "),
      actions: [
        TextButton(
          child: const Text(
            "No",
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        TextButton(
          child: const Text('Yes'),
          onPressed: () {
            setState(() {
              lstStudent.remove(student);
            });
          },
        )
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
  //show the dialog

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data table'),
      ),
      body: InkWell(
        onTap: () {
          MotionToast.success(description: const Text(" is deleted"))
              .show(context);
        },
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: DataTable(
            headingRowColor:
                MaterialStateColor.resolveWith((states) => Colors.amber),
            border: TableBorder.all(color: Colors.black),
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('RollNo')),
              DataColumn(label: Text('Edit'))
            ],
            rows: lstStudent
                .map(
                  (s) => DataRow(cells: [
                    DataCell(Text(s.fname!)),
                    DataCell(Text(s.age.toString())),
                    DataCell(Wrap(children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon((Icons.edit))),
                      IconButton(
                          onPressed: () {
                            _showDialogAlert(context, s);
                            // setState(() {
                            //   lstStudent.remove(s);
                            // });
                          },
                          icon: const Icon((Icons.delete))),
                    ]))
                  ]),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
