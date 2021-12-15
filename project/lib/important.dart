import 'package:flutter/material.dart';
import 'HomePage.dart';

class important extends StatefulWidget {
  @override
  _importantState createState() => _importantState();
}

class _importantState extends State<important> {
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
        title: Text('สิ่งสำคัญ'),
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
                  title: Text('ส่งงานอาจารย์วันพุทธ'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Card(
                child: ListTile(
                  title: Text('นัดประชุมงานโครงการระดับโลก'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Card(
                child: ListTile(
                  title: Text('ซ่อมรถ'),
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
