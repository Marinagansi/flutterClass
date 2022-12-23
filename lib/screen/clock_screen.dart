import 'package:flutter/material.dart';

class ClockScreen extends StatefulWidget {
  const ClockScreen({super.key});

  @override
  State<ClockScreen> createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  TimeOfDay? time = TimeOfDay.now();
  DateTime? date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             
             Row(
             
              children: [
                Text(
                  'Time:${time!.hour}:${time!.minute}',
                  style: TextStyle(fontSize: 34),
                ),
                Spacer(),
                ElevatedButton(
                  // button
                  onPressed: () async {
                    TimeOfDay? newTime =
                        await showTimePicker(context: context, initialTime: time!);
                    if (newTime != null) {
                      setState(() {
                        time = newTime;
                      });
                    }
                  },
                  child: const Text(
                    'change time',
                    style: TextStyle(
                      fontFamily: 'OPenSans Italic',
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
             ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'date:${date!.day}:${date!.month}/${date!.year}',
                  style: TextStyle(fontSize: 34),
                ),
                Spacer(),
                ElevatedButton(
                  // button
                  onPressed: () async {
                    DateTime? newDate =
                        await showDatePicker(context: context, initialDate: date!,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050));
                    if (newDate != null) {
                      setState(() {
                        date = newDate;
                      });
                    }
                  },
                
                  child: const Text(
                    'change date',
                    style: TextStyle(
                      fontFamily: 'OPenSans Italic',
                      fontSize: 30,
                    ),
                  ),
                ),

                  
               
              ],
        ),
           ],
         ),
    );
  }
}
