import 'package:flutter/material.dart';
import 'HomePage.dart';

class plan extends StatefulWidget {
  @override
  _planState createState() => _planState();
}

class _planState extends State<plan> {
  int _counter = 0;

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  child: Center(
                    child: Text(
                      'ลองเทส',
                      style: TextStyle(
                          color: Colors.teal[100],
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Card(
                child: ListTile(
                  title: Text('นัดประชุม'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Card(
                child: ListTile(
                  title: Text('ซื้อกับข้าว'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Card(
                child: ListTile(
                  title: Text('นัดอ่านหนังสือ'),
                ),
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
