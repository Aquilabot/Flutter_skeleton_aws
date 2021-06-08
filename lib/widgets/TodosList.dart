// flutter and ui libraries
import 'package:flutter/material.dart';
// amplify models that should have been generated for you
import '../models/Todo.dart';
// presentational widgets
import 'TodoItem.dart';

class TodosList extends StatelessWidget {
  final List<Todo> todos;

  TodosList({this.todos});

  @override
  Widget build(BuildContext context) {
    return todos.length >= 1
        ? ListView(
            padding: EdgeInsets.all(8),
            children: todos.map((todo) => TodoItem(todo: todo)).toList())
        : Center(child: Text('Tap button below to add a todo!'));
  }
}
