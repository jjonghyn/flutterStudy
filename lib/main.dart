import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class Todo{
  bool isDone = false;
  String title;
  Todo(this.title);

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "할일관리",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatefulWidget {
  @override
 _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage>{

  final _items = <Todo>[];

  var _todoController = TextEditingController();
  @override
  void dispose(){
    _todoController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("할 일"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: TextField(
                  controller: _todoController,
                ),
                ),
                IconButton(onPressed: () {  }, icon: const Icon(Icons.add_outlined),
                )
              ],
            ),
            Expanded(child: ListView(
              children: <Widget>[

              ],
            ))
          ],
        ),
      )
    );
  }

}
