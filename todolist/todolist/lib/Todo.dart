import 'package:flutter/material.dart';

class Todo {
  String id;
  String? todText;
  bool isdone;
  Todo({required this.id, required this.todText, required this.isdone});

  static List<Todo> list() {
    return [
      Todo(id: '01', todText: 'hello world', isdone: false),
      Todo(id: '02', todText: 'hello worl', isdone: false),
      Todo(id: '03', todText: 'hello wor', isdone: false),
      Todo(id: '04', todText: 'hello wo', isdone: false),];
  }
}
