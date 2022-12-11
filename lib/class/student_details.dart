import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:smartphone/model/student.dart';

class StudentDetailScreen extends StatefulWidget {
  const StudentDetailScreen({Key? key}) : super(key: key);

  @override
  State<StudentDetailScreen> createState() => _StudentDetailScreenState();
}

class _StudentDetailScreenState extends State<StudentDetailScreen> {
  void _display() {
    Navigator.pushNamed(context, '/displayStudent');
  }

  List<Student>? lstStudent = [];
  void _addStudentToList(Student student) {
    lstStudent!.add(student);
  }

  String? _val = 'male';

  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  final _ageController = TextEditingController();
  final _addressController = TextEditingController();

  final _dropdownController = DropdownEditingController(value: 'Kathmandu');
  String? dropdownvalue = 'kathmandu';

  final _globalKey = GlobalKey<FormState>();

  var items = ['bkt', 'kathmandu', 'lalitpur'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Student Details',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Form(
         key: _globalKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  TextFormField(
                    
                    controller: _fnameController,
                    //labeled
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'first name'),
                  validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter first name';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _lnameController,
                    //labeled
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'last name'),
                  validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter last name';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _ageController,
                    //labeled
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'age'),
                  validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter age';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  //radio button
                  const Text(
                    'select gender',
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                  RadioListTile(
                    title: const Text("male"),
                    value: 'male',
                    groupValue: _val,
                    onChanged: (val) {
                      setState(() {
                        _val = val;
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text("female"),
                    value: 'female',
                    groupValue: _val,
                    onChanged: (val) {
                      setState(() {
                        _val = val;
                      });
                    },
                  ),
                  RadioListTile(
                    title: const Text("others"),
                    value: 'others',
                    groupValue: _val,
                    onChanged: (val) {
                      setState(() {
                        _val = val;
                      });
                    },
                  ),
                  //label
                  TextFormField(
                    controller: _addressController,
                    maxLines: 3,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Address'),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  //dropdown
                  SizedBox(
                    width: double.infinity,
                    child: DropdownButton(
                      isExpanded: true,
                      // Initial Value
                      value: dropdownvalue,
          
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),
          
                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
          
                  //new drop down
                  
                  TextDropdownFormField(
                    controller: _dropdownController,
                    options: items,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        labelText: "Select your city"),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        child: const Text('Save Student'),
                        onPressed: () {
                          if (_globalKey.currentState!.validate()) {
                            Student student = Student(
                              fname: _fnameController.text,
                              lname: _lnameController.text,
                              age: int.parse(_ageController.text),
                              address: _addressController.text,
                              gender: _val,
                              city: _dropdownController.value,
                            );
          
                            _addStudentToList(student);
                            debugPrint(lstStudent!.length.toString());
                          }
                        }),
                  ),
                  //button
                  
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          _display();
                        },
                        child: const Text('Display student')),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
