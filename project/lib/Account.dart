import 'package:flutter/material.dart';
import 'package:logindemo/%E0%B8%B4beta.dart';
import 'package:logindemo/beta2.dart';
import 'package:logindemo/beta3.dart';
import 'package:logindemo/password.dart';
import 'HomePage.dart';
import 'important.dart';

class account extends StatefulWidget {
  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('บัญชีของฉัน'),
          backgroundColor: Colors.teal[100],
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Row(children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => beta()));
                      },
                      child: Text(
                        '     ชื่อ',
                        style: TextStyle(color: Colors.black, fontSize: 32),
                      ),
                    ),
                     SizedBox(
                  height: 30,
                ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => beta2()));
                      },
                      child: Text(
                        '     เปลี่ยนอีเมล',
                        style: TextStyle(color: Colors.black, fontSize: 32),
                      ),
                    ),
                     SizedBox(
                  height: 30,
                ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => password()));
                      },
                      child: Text(
                        '     เปลี่ยนรหัสผ่าน',
                        style: TextStyle(color: Colors.black, fontSize: 32),
                      ),
                    ),
                     SizedBox(
                  height: 30,
                ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => beta3()));
                      },
                      child: Text(
                        '     ลบบัญชี',
                        style: TextStyle(color: Colors.red, fontSize: 40),
                      ),
                    ),
                  ])
            ])));
  }
}
