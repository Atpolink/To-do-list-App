import 'package:flutter/material.dart';
//import 'package:logindemo/database.dart';
import 'birthday.dart';

class apply extends StatefulWidget {
  @override
  _applyState createState() => _applyState();
}

class _applyState extends State<apply> {
  @override
  final formKey = GlobalKey<FormState>();
  bool statusRedEye = true;
  bool statusRedEye1 = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('สร้างบัญชีผู้ใช้งาน'),
        backgroundColor: Colors.teal[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  //height: 80,
                  //width: 150,
                  child: Center(
                    child: Text(
                      'สร้างบัญชี',
                      style: TextStyle(
                          color: Colors.teal[100],
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                key: formKey,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'ป้อน Username ที่ต้องการป้อน'),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                    hintText: 'ป้อน ID อีเมลที่ถูกต้อง เช่น abc@gmail.com'),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
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
                obscureText: statusRedEye1,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            statusRedEye1 = !statusRedEye1;
                          });
                          print('statusRedeye = $statusRedEye1');
                        },
                        icon: statusRedEye1
                            ? Icon(Icons.remove_red_eye)
                            : Icon(Icons.remove_red_eye_outlined)),
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    hintText: 'ยืนยันการใส่รหัสผ่านอีกครั้ง'),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.teal[100],
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => birthday()));
                    },
                    child: Text(
                      'ถัดไป',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )))
          ],
        ),
      ),
    );
  }
}
