import 'package:flutter/material.dart';
import 'HomePage.dart';

class important extends StatefulWidget {
  @override
  _importantState createState() => _importantState();
}

class _importantState extends State<important> {
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
                      '',
                      style: TextStyle(
                          color: Colors.teal[100],
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
