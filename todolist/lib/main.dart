import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do list',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'to do list'),
    );
  }
}

class Name {}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Text('Email:'),
                  TextFormField(),
                  SizedBox(
                    height: 15,
                  ),
                  Text('รหัสผ่าน:'),
                  TextFormField()
                  SizedBox(height: 15,),
                  Row(
                    children: <Widget>[
                      Expanded(child: ElevatedButton(
                        onPressed: () {

                        },
                        child: Text('ลงทะเบียน'),
                        ),)
                    ],
                  )
                ],
              ),
            )));
  }
}
