import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ActiveAlarm extends StatefulWidget{
  const ActiveAlarm({super.key, required this.dtToAlarm});
  final DateTime dtToAlarm;

  @override
  State<StatefulWidget> createState() {
    return ActiveAlarmState();
  }

}

class ActiveAlarmState extends State<ActiveAlarm>{
  bool valueSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        //color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text("На ${widget.dtToAlarm.hour}:${widget.dtToAlarm.minute}",
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                  Text("Через 00 ч 00 мин", style: TextStyle(fontSize: 9, color: Colors.grey.shade700))
              ],
            ),
            Row( children: [
              IconButton(onPressed: onAddTime, icon: Icon(Icons.alarm_add, color: Colors.blue.shade500,)) ,
              Switch(value: valueSwitch, onChanged: onSwitchButton)
            ],)

          ],)
    );
  }


  void onSwitchButton(bool value) {
    print("Switch" + value.toString());
    setState(() {
      valueSwitch = value;
    });
  }

  void onAddTime() {

  }
}