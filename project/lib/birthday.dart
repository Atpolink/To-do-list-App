import 'package:flutter/material.dart';
//import 'package:logindemo/database.dart';

class birthday extends StatefulWidget {
  @override
  _birthdayState createState() => _birthdayState();
}

class _birthdayState extends State<birthday> {
  @override
  final formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สร้างบัญชีผู้ใช้งาน'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  child: Center(
                    child: Text(
                      'วันเดือนปีเกิด',
                      style: TextStyle(color: Colors.teal[100], fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                key: formKey,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ประเทศ',
                    hintText: 'ป้อน ประเทศที่คุณอาศัยอยู่'),
                //keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'วัน',
                    hintText: 'ป้อนวันที่'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'เดือน',
                    hintText: 'ป้อนเดือน'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ปี',
                    hintText: 'ป้อนปี'),
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
                  Navigator.pop(context);
                  //context, MaterialPageRoute(builder: (_) => ));
                },
                child: Text(
                  'ถัดไป',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
