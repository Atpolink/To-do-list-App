import 'package:flutter/material.dart';
//import 'package:logindemo/database.dart';
import 'apply.dart';
import 'HomePage.dart';
import 'password.dart';
import 'database.dart';
import 'password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  final formKey = GlobalKey<FormState>();

  bool statusRedEye = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 300,
                    height: 200,
                    child: Image.asset('asset/images/12.jpg')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                key: formKey,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'อีเมล',
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
                    labelText: 'รหัสผ่าน',
                    hintText: 'ใส่รหัสผ่านที่ปลอดภัย'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => password()));
              },
              child: Text(
                'ลืมรหัสผ่าน!',
                style: TextStyle(color: Colors.teal[100], fontSize: 19),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'ล็อกอิน',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => apply()));
              },
              child: Text(
                'ผู้ใช้ใหม่? สร้างบัญชี',
                style: TextStyle(color: Colors.teal[100], fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
