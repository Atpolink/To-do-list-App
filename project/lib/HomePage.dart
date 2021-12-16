import 'package:logindemo/Account.dart';
import 'package:logindemo/plan.dart';
import 'package:logindemo/warn.dart';
import 'package:logindemo/work.dart';

import 'apply.dart';
import 'package:flutter/material.dart';
import 'settings.dart';
import 'work.dart';
import 'plan.dart';
import 'important.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text('Homepage'),
          backgroundColor: Colors.teal[100],
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => settings()));
              },
            ),
          ],
        ),
      ),
      body: Center(
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => important()));
                  },
                  child: Text(
                    '   -สิ่งสำคัญ',
                    style: TextStyle(color: Colors.black, fontSize: 32),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => plan()));
                  },
                  child: Text(
                    '   -ที่วางแผน',
                    style: TextStyle(color: Colors.black, fontSize: 32),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => work()));
                  },
                  child: Text(
                    '   -งาน',
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
