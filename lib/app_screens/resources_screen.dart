import 'package:flutter/material.dart';
import './home_screen.dart';
import './drawer.dart';

class Resources extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "DevApp: Resources",
    home: resourcesHome(),
  );
  }
}

class resourcesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DevApp: Resources'),),
      drawer: new drawerCreator(),
      body: Container(
        child: Text(
          'TBD'
        ),
      )
    );
  }
}