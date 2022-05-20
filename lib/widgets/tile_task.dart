import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkBoxCallback;
  final Function longPressCallback;
  TaskTile({required this.isChecked, required this.title,required this.checkBoxCallback, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title,
            style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null,
            )),
        onLongPress: (){
          longPressCallback();
        },
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (value) {
            checkBoxCallback(value);
          },
        )
    );
  }
}
