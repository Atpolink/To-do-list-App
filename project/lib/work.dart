///import 'dart:html';

import 'package:flutter/material.dart';

class work extends StatefulWidget {
  @override
  _workState createState() => _workState();
}

class _workState extends State<work> {
  @override
  final formKey = GlobalKey<FormState>();
  Widget buid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('งาน'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  child: Center(
                    child: Text(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
