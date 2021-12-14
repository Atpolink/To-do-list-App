import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          title: Text('User name'),
          backgroundColor: Colors.greenAccent,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'ปฎิทิน',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'สิ่งสำคัญ',
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'ที่วางแผน',
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'มอบหมายให้ฉัน',
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'งาน',
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(
                  height: 400,
                ),
                Text(
                  '+ รายการใหม่',
                  style: TextStyle(fontSize: 32),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
