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
                ),
                child: Text(
                  'ตั้งค่าผู้ใช้',
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  //MaterialPageRoute(builder: (_) => important()));
                },
                child: Text(
                  'สิ่งสำคัญ',
                  style: TextStyle(color: Colors.black, fontSize: 26),
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
