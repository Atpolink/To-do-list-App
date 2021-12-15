import 'apply.dart';
import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            backgroundColor: Colors.teal[100],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Center(
              child: Container(
                child: Center(
                  child: Text(
                    'ชื่อ User" "',
                    style: TextStyle(color: Colors.black, fontSize: 32),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Center(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'ตั้งค่าบัญชีผู้ใช้',
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
              ),
            ),
          ),
        ])));
  }
}
