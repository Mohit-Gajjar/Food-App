import 'package:flutter/material.dart';
class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xff161622),
      appBar: AppBar(
              title: Text(
                'Options',
                style: TextStyle(fontSize: 20, color: Colors.amberAccent),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
      ),
        body: Center(
        child: Text(
          'Menu',
        style: TextStyle(color: Colors.white),
      ),
    ),
    );
  }
}