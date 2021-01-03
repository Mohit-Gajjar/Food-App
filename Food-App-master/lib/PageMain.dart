import 'package:flutter/material.dart';
import 'package:food_app/2.dart';
import 'package:food_app/3.dart';
import 'package:food_app/4.dart';
import 'package:food_app/5.dart';

import '1.dart';

class PageMain extends StatefulWidget {
  @override
  _PageMainState createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {
  List<Widget> scaffolds = [
    MaterialApp(debugShowCheckedModeBanner: false, home: FstUser()),
    MaterialApp(debugShowCheckedModeBanner: false, home: NdUser()),
    MaterialApp(debugShowCheckedModeBanner: false, home: RdUser()),
    MaterialApp(debugShowCheckedModeBanner: false, home: ThUser()),
    MaterialApp(debugShowCheckedModeBanner: false, home: FthUser()),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            backgroundColor: Color(0xff161622),
            appBar: AppBar(
              title: Text(
                'Choice Panipuri & Chat Counter',
                style: TextStyle(fontSize: 20, color: Colors.amberAccent),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/menu');
                  },
                  icon: Icon(Icons.menu),
                )
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text: 'User 1'),
                  Tab(text: 'User 2'),
                  Tab(text: 'User 3'),
                  Tab(text: 'User 4'),
                  Tab(text: 'User 5'),
                ],
              ),
            ),
            body: TabBarView(
              children: scaffolds,
            )));
  }
}

