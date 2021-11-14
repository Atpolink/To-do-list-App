import 'package:flutter/material.dart';
class apply extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<apply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child: Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.teal[100], borderRadius: BorderRadius.circular(10)),
          child: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'ทดสอบ',
              style: TextStyle(color: Colors.white, fontSize: 25),
            )
          )
        )
    )
    );
  }
}