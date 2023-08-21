import 'package:flutter/material.dart';
import 'package:light_tasks/constants/colors.dart';
import 'package:light_tasks/models/task.dart';

class SingleTask extends StatelessWidget {
  final Task task;

  const SingleTask({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          debugPrint("It got printed --> list tile");
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          task.completed ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          task.text,
          style: TextStyle(
              fontSize: 17,
              color: tdGrey,
              decoration: task.completed ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          height: 37,
          width: 37,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(7)),
          child: IconButton(
            onPressed: () {
              debugPrint("It got printed --> delete button");
            },
            icon: Icon(Icons.delete),
            color: Colors.white,
            iconSize: 17,
          ),
        ),
      ),
    );
  }
}
