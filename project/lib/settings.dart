import 'package:flutter/material.dart';

class settings extends StatefulWidget {
   @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
         backgroundColor: Colors.teal[100],
        ),
        ),
    );
  }
}




