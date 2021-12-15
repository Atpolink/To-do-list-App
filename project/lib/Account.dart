import 'package:flutter/material.dart';
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
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: Row(children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'ข้อมูลบัญชี',
                      style: TextStyle(color: Colors.black, fontSize: 36),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => important()));
                      },
                      child: Text(
                        '     ชื่อผู้ใช้',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => important()));
                      },
                      child: Text(
                        '     เปลี่ยนอีเมล',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => important()));
                      },
                      child: Text(
                        '     เปลี่ยนรหัสผ่าน',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => important()));
                      },
                      child: Text(
                        '     ลบบัญชี',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ),
                  ])
            ])));
  }
}
