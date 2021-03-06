import 'package:flutter/material.dart';

import '../model/db_model.dart';
import '../model/todo_model.dart';
import '../widgets/todo_list.dart';
import '../widgets/user_input.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // 二つのウィジェット間のための機能を作成

  // データベースオブジェクトを作ってアクセスできるようにする
  var db = DatabaseConnect();

  // 追加機能
  void addItem(Todo todo) async {
    await db.insertTodo(todo);
    setState(() {});
  }

  // 削除機能
  void deleteItem(Todo todo) async {
    await db.deleteTodo(todo);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EBFF),
      appBar: AppBar(
        title: const Text("Todoアプリ"),
      ),
      body: Column(
        children: [
          TodoList(
            deleteFunction: deleteItem,
            insertFunction: addItem,
          ),
          UserInput(
            insertFunction: addItem,
          ),
        ],
      ),
    );
  }
}