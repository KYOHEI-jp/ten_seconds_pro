import 'package:flutter/material.dart';
import 'package:ten_seconds/model/todo_model.dart';

class TodoCard extends StatefulWidget {
  final int id;
  final String title;
  final DateTime creationDate;
  late bool isChecked;
  final Function insertFunction;
  final Function deleteFunction;

  TodoCard({
    required this.id,
    required this.title,
    required this.creationDate,
    required this.insertFunction,
    required this.deleteFunction,
  });

  @override
  _TodoCardState createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  @override
  Widget build(BuildContext context) {
    var anotherTodo = Todo(
        id: widget.id,
        title: widget.title,
        isChecked: widget.isChecked,
        creationDate: widget.creationDate);
    return Card(
      
    );
  }
}
