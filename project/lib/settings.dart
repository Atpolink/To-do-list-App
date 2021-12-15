import 'apply.dart';
import 'package:flutter/material.dart';
import 'Account.dart';
import 'warn.dart';

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
          title: Text('การตั้งค่า'),
          backgroundColor: Colors.teal[100],
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200.0,
                color: Colors.orange,
                child: Center(
                  child: Text('Background image goes here'),
                ),
              ),
              // Expanded(
              //   child: Container(
              //     color: Colors.white,
              //     child: Center(
              //       child: Text('Content goes here'),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Container(
                    child: Center(
                      child: Text(
                        'ชื่อ Username',
                        style: TextStyle(
                            color: Colors.teal[100],
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 10.0,
                ),
                child: Text(
                  'ตั้งค่าผู้ใช้',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => account()));
                },
                child: Text(
                  'บัญชีของฉัน',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                  left: 10.0,
                ),
                child: Text(
                  'การตั้งค่าแอป',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => warn()));
                },
                child: Text(
                  'โปรไฟล์ผู้ใช้',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
          Positioned(
            top: 130.0,
            child: Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
