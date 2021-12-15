import 'dart:html';
import 'apply.dart';
import 'package:flutter/material.dart';
import 'settings.dart';

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
          backgroundColor: Colors.teal[100],
        ),
      ),
      body:Center(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => apply()));
                  },
                  child: Text(
                    'สิ่งสำคัญ',
                    style: TextStyle(color: Colors.black, fontSize: 32),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => apply()));
                  },
                  child: Text(
                    'ที่วางแผน',
                    style: TextStyle(color: Colors.black, fontSize: 32),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => apply()));
                  },
                  child: Text(
                    'งาน',
                    style: TextStyle(color: Colors.black, fontSize: 32),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
