import 'package:flutter/material.dart';
import 'HomePage.dart';

class important extends StatefulWidget {
  @override
  _importantState createState() => _importantState();
}

class _importantState extends State<important> {
  int _counter = 0;

  List todos = List();
  String input = "";
  @override
  void initState() {
    super.initState();
    todos.add("ส่งงาน");
    todos.add("จ่ายค่าหอ");
    todos.add("เตรียมของขวัญวันปีใหม่");
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  final formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('ที่วางแผนไว้'),
        backgroundColor: Colors.teal[100],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    title: Text("เพิ่มรายการ"),
                    content: TextField(onChanged: (String value) {
                      input = value;
                    }),
                    actions: <Widget>[
                      FlatButton(
                          onPressed: () {
                            setState(() {
                              todos.add(input);
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text("เพิ่ม"))
                    ]);
              });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(todos[index]),
                child: Card(
                  elevation: 4,
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: ListTile(
                    title: Text(todos[index]),
                    trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          setState(() {
                            todos.removeAt(index);
                          });
                        }),
                  ),
                ));
          }),
    );
  }
}
