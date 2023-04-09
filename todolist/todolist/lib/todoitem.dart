import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'Todo.dart';

class Todoitem extends StatelessWidget {
  final Todo todo;
  final ontodochanged;
  final ondelete;
  const Todoitem(
      {super.key,
      required this.todo,
      required this.ontodochanged,
      required this.ondelete});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            ontodochanged(todo);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: Colors.white,
          leading: Icon(
            todo.isdone ? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.blue,
          ),
          title: Text(
            todo.todText!,
            textScaleFactor: 1.25,
            style: TextStyle(
              color: Colors.black,
              decoration: todo.isdone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            height: 35,
            width: 25,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 10,
              icon: const Icon(Icons.delete),
              onPressed: () {
                ondelete();
              },
            ),
          ),
        ));
  }
}
