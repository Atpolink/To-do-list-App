import 'package:flutter/material.dart';
import 'package:logindemo/database.dart';

class apply extends StatefulWidget {
  @override
  _applyState createState() => _applyState();
}

class _applyState extends State<apply> {
  @override
  final formKey = GlobalKey<FormState>();
  bool statusRedEye = true;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('สร้างบัญชีผู้ใช้งาน'),
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                height: 80,
                width: 150,
                child: Text(
                  'สร้างบัญชี',
                  style: TextStyle(color: Colors.teal[100], fontSize: 24),
                ),
              ),
            ),
          ),
          Padding(
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              key: formKey,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'ป้อน ID อีเมลที่ถูกต้อง เช่น abc@gmail.com'),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              obscureText: statusRedEye,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          statusRedEye = !statusRedEye;
                        });
                        print('statusRedeye = $statusRedEye');
                      },
                      icon: statusRedEye
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.remove_red_eye_outlined)),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'ใส่รหัสผ่านที่ปลอดภัย'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              obscureText: statusRedEye,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          statusRedEye = !statusRedEye;
                        });
                        print('statusRedeye = $statusRedEye');
                      },
                      icon: statusRedEye
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.remove_red_eye_outlined)),
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  hintText: 'ยืนยันการใส่รหัสผ่านอีกครั้ง'),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.circular(10)),
              child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ทดสอบ',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )))
        ])));
  }
}
