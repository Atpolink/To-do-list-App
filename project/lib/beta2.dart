import 'package:flutter/material.dart';
import 'main.dart';


class beta2 extends StatefulWidget {
  @override
  _beta2State createState() => _beta2State();
}

class _beta2State extends State<beta2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 250.0),
              child: Center(
                child: Container(
                  child: Center(
                    child: Text(
                      'เปลี่ยนอีเมล',
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
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'ตอนนี้ระบบเป็น beta Test อยู่ ยังไม่สามารถเปลี่ยนอีเมลได้นะจ๊ะ',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: 16),
                maxLines: 2,
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
                  'เข้าสู่หน้าหลัก',
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