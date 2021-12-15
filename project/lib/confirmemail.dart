import 'package:flutter/material.dart';
import 'main.dart';

class confirmemail extends StatefulWidget {
  @override
  _confirmemailState createState() => _confirmemailState();
}

class _confirmemailState extends State<confirmemail> {
  @override
  final formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: Center(
                    child: Text(
                      'ตรวจสอบอีเมลล์',
                      style: TextStyle(color: Colors.teal[100], fontSize: 24),
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
              child: Text(
                'ใส่รหัสที่เราส่งไปยัง "Email@example.com" ถ้าคุณไม่ได้รับอีเมลล์ ให้ตรวจสอบโฟลเดอร์อีเมลขยะของคุณหรือ ลองอีกครั้ง',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 16),
                maxLines: 3,
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
                    labelText: 'ยืนยันรหัส',
                    hintText: 'ป้อนรหัสยืนยัน'),
              ),
            ),
            SizedBox(
              height: 30,
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
                      context, MaterialPageRoute(builder: (_) => LoginDemo()));
                },
                child: Text(
                  'ยืนยัน',
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
