import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              expandedHeight: 200.0,
              floating: true,
              pinned: true,
              snap: false,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('ทดสอบ'),
              )),
           SliverList(
        delegate: SliverChildBuilderDelegate(
          (_, int index) {
            return ListTile(
              leading: Container(
                  padding: EdgeInsets.all(8),
                  width: 100,
                  child: Placeholder()),
              title: Text('Place ${index + 1}', textScaleFactor: 2),
            );
          },
          childCount: 20,
=======
      appBar: AppBar(
        title: Text('หน้าทดสอบ'),
      ),
      body: Center(
        child: Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.teal[100], borderRadius: BorderRadius.circular(10)),
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'ทดสอบ',
              style: TextStyle(color: Colors.white, fontSize: 25),
>>>>>>> 587d372af2f72e7915f601972689ad8188abcff3
            ),
          )
        ],
      ),
    );
  }
}
